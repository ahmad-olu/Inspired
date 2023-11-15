part of 'login_cubit.dart';

enum LoginStatus {
  initial,
  submitting,
  submitted,
  error,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String email,
    required String password,
    required LoginStatus status,
    required bool passwordVisibility,
    String? errorMessage,
  }) = _LoginState;
  factory LoginState.initial() => const _LoginState(
        email: '',
        password: '',
        passwordVisibility: true,
        status: LoginStatus.initial,
      );
}
