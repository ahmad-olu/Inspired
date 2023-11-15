import 'dart:developer';

import 'package:appwrite/models.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/user.dart';
import 'package:geat/app/repository/auth_repo.dart';
import 'package:geat/app/repository/user_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.userRepo, required this.authRepository})
      : super(AuthState.unKnown()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        appLogoutRequested: (value) async {
          await authRepository.logout();
          emit(
            state.copyWith(
              user: null,
              status: AuthStatus.unauthenticated,
            ),
          );
        },
        appUserChanged: (value) async {
          try {
            final user = await authRepository.currentUser;

            emit(
              state.copyWith(
                user: user,
                status: AuthStatus.authenticated,
              ),
            );

            // await emit.forEach(
            //   userRepo.userStream().stream,
            //   onData: (data) {
            //     if (data.events.contains(
            //       'databases.${AppwriteConst.geatDataBaseId}.collections.${AppwriteConst.userCollectionId}.documents.${user.$id}.update',
            //     )) {
            //       final profileUser = AppUser.fromJson(data.payload);

            //       return state.copyWith(
            //         profileUser: profileUser,
            //       );
            //     }
            //     return state;
            //   },
            // );
          } catch (e) {
            emit(
              state.copyWith(
                user: null,
                status: AuthStatus.unauthenticated,
              ),
            );
          }
        },
      );
    });
  }
  final AuthRepo authRepository;
  final UserRepo userRepo;
}
