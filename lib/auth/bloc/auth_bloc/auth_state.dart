part of 'auth_bloc.dart';

enum AuthStatus {
  unKnown,
  authenticated,
  unauthenticated,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthStatus status,
    User? user,
  }) = _AuthState;
  // factory AuthState.authenticated(User user, AppUser profileUser) => _AuthState(
  //       status: AuthStatus.authenticated,
  //       user: user,
  //       profileUser: profileUser,
  //     );
  // factory AuthState.unauthenticated() => const _AuthState(
  //       status: AuthStatus.unauthenticated,
  //     );
  factory AuthState.unKnown() => const _AuthState(
        status: AuthStatus.unKnown,
      );
}
