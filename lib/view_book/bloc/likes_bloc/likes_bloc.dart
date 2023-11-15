import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/constants/enum/notification_type_enum.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/models/notification.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';

part 'likes_event.dart';
part 'likes_state.dart';
part 'likes_bloc.freezed.dart';

class LikesBloc extends Bloc<LikesEvent, LikesState> {
  LikesBloc(
    this._bookRepo,
    this._authBloc,
    this._notificationRepo,
    this._userRepo,
  ) : super(LikesState.initial()) {
    on<LikesEvent>((event, emit) async {
      await event.map(
        initialize: (value) async {
          final currentUserId = _authBloc.state.user!.$id;
          final book = await _bookRepo.getSingleBook(value.book.id!);
          emit(
            state.copyWith(
              bookId: book.id!,
              isLiked: book.likes.contains(currentUserId),
              likes: book.likes,
            ),
          );
          await emit.forEach(
            _bookRepo.updateLikes().stream,
            onData: (data) {
              if (data.events.contains(
                'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.bookCollectionId}.documents.${state.bookId}.update',
              )) {
                final bookLikes = Book.fromJson(data.payload).likes;
                return state.copyWith(
                  likes: [...bookLikes],
                  // isLiked: value.book.likes.contains(currentUserId),
                );
              }
              return state;
            },
          );
        },
        toggle: (value) async {
          final currentUserId = _authBloc.state.user!.$id;

          if (state.isLiked == true) {
            // log(state.likes.toString());
            final updatedList = List<String>.from(state.likes)
              ..remove(currentUserId);
            final book = await _bookRepo.updateSingleBook(
              bookId: state.bookId,
              data: {
                'likes': [...updatedList],
              },
            );
            emit(
              state.copyWith(
                likes: book.likes,
                isLiked: book.likes.contains(currentUserId),
              ),
            );
          } else {
            final book = await _bookRepo.updateSingleBook(
              bookId: state.bookId,
              data: {
                'likes': [...state.likes, currentUserId],
              },
            );
            final currentUserName =
                await _userRepo.getUser(_authBloc.state.user!.$id);
            final notification = Notification(
              uId: book.uId,
              postID: book.id!,
              message: '${currentUserName.username} liked 💗 Your post',
              notificationType: NotificationType.like,
            );
            await _notificationRepo.createNotification(notification);
            emit(
              state.copyWith(
                likes: book.likes,
                isLiked: book.likes.contains(currentUserId),
              ),
            );
          }
        },
      );
    });
  }

  final BookRepo _bookRepo;
  final AuthBloc _authBloc;
  final NotificationRepo _notificationRepo;
  final UserRepo _userRepo;
}
