part of 'password_update_cubit.dart';

enum PasswordUpdateStatus { initial, submitting, submitted, error }

@freezed
class PasswordUpdateState with _$PasswordUpdateState {
  const factory PasswordUpdateState({
    required String oldPassword,
    required String newPassword,
    required PasswordUpdateStatus status,
    String? errorMessage,
  }) = _PasswordUpdateState;
  factory PasswordUpdateState.initial() => const _PasswordUpdateState(
        oldPassword: '',
        newPassword: '',
        status: PasswordUpdateStatus.initial,
      );
}
