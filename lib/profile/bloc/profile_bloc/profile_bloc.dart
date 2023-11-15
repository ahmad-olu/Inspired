import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/constants/enum/notification_type_enum.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/models/notification.dart';
import 'package:geat/app/models/re_imagined.dart';
import 'package:geat/app/models/user.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._userRepo,
    this._authBloc,
    this._bookRepo,
    this._notificationRepo,
  ) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        getUserData: (value) async {
          emit(state.copyWith(status: ProfileStatus.loading));

          try {
            final currentUserId = _authBloc.state.user!.$id;

            final user = await _userRepo.getUser(value.uid);
            final currentLoggedInUser = await _userRepo.getUser(currentUserId);
            final isCurrentUser = currentUserId == value.uid;
            final books = await _bookRepo.getUserBooks(value.uid);
            final reImaginedList = await _bookRepo.getUserReImagined(value.uid);
            final isFollowing = user.followers.contains(currentUserId);

            emit(
              state.copyWith(
                user: user,
                books: books,
                reImagined: reImaginedList,
                isCurrentUser: isCurrentUser,
                currentLoggedInUser: currentLoggedInUser,
                isFollowing: isFollowing,
                status: ProfileStatus.loaded,
              ),
            );

            await emit.forEach(
              _userRepo.userStream().stream,
              onData: (data) {
                if (data.events.contains(
                  'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.userCollectionId}.documents.${value.uid}.update',
                )) {
                  final user = AppUser.fromJson(data.payload);
                  final isFollowing = user.followers.contains(currentUserId);
                  return state.copyWith(
                    user: user,
                    isFollowing: isFollowing,
                  );
                } else if (data.events.contains(
                  'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.userCollectionId}.documents.${state.currentLoggedInUser.id}.update',
                )) {
                  final currentLoggedInUser = AppUser.fromJson(data.payload);
                  return state.copyWith(
                    currentLoggedInUser: currentLoggedInUser,
                  );
                }
                return state;
              },
            );
          } on AppGenericException catch (e, _) {
            emit(
              state.copyWith(
                status: ProfileStatus.error,
                errorMessage: '${e.code}⚠️ message: ${e.message}',
              ),
            );
          } catch (e) {
            emit(state.copyWith(status: ProfileStatus.error));
          }
        },
        followUser: (value) async {
          var user = state.user;
          var currentLoggedInUser = state.currentLoggedInUser;
          if (state.isFollowing == true) {
            final updatedUser = List<String>.from(user.followers)
              ..remove(currentLoggedInUser.id);
            final updatedCurrentLoggedInUser =
                List<String>.from(currentLoggedInUser.following)
                  ..remove(user.id);

            user = user.copyWith(followers: updatedUser);
            currentLoggedInUser = currentLoggedInUser.copyWith(
              following: updatedCurrentLoggedInUser,
            );
          } else {
            user = user.copyWith(
              followers: [
                ...user.followers,
                currentLoggedInUser.id,
              ],
            );
            currentLoggedInUser = currentLoggedInUser.copyWith(
              following: [
                ...currentLoggedInUser.following,
                user.id,
              ],
            );
          }
          user = user.copyWith(followers: user.followers);
          currentLoggedInUser = currentLoggedInUser.copyWith(
            following: currentLoggedInUser.following,
          );
          await _userRepo.followUser(user.id, user.followers);
          await _userRepo.followingUser(
            currentLoggedInUser.id,
            currentLoggedInUser.following,
          );

          final notification = Notification(
            uId: user.id,
            postID: currentLoggedInUser.id,
            message: '${currentLoggedInUser.username} is Following 🏃 You',
            notificationType: NotificationType.follow,
          );
          await _notificationRepo.createNotification(notification);
        },
        emptyPage: (value) {
          emit(ProfileState.initial());
        },
        initCurrentUser: (value) async {
          try {
            final currentUserId = _authBloc.state.user!.$id;
            final currentLoggedInUser = await _userRepo.getUser(currentUserId);
            emit(state.copyWith(currentLoggedInUser: currentLoggedInUser));
          } on AppGenericException catch (e, _) {
            emit(
              state.copyWith(
                status: ProfileStatus.error,
                errorMessage: '${e.code}⚠️ message: ${e.message}',
              ),
            );
          } catch (e) {
            emit(state.copyWith(status: ProfileStatus.error));
          }
        },
      );
    });
  }
  final UserRepo _userRepo;
  final AuthBloc _authBloc;
  final BookRepo _bookRepo;
  final NotificationRepo _notificationRepo;
}
