part of 'email_update_cubit.dart';

enum EmailUpdateStatus { initial, submitting, submitted, error }

@freezed
class EmailUpdateState with _$EmailUpdateState {
  const factory EmailUpdateState({
    required String email,
    required String password,
    required EmailUpdateStatus status,
    String? errorMessage,
  }) = _EmailUpdateState;
  factory EmailUpdateState.initial() => const _EmailUpdateState(
        email: '',
        password: '',
        status: EmailUpdateStatus.initial,
      );
}
