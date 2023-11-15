part of 'registration_cubit.dart';

enum RegistrationStatus {
  initial,
  submitting,
  submitted,
  error,
}

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required String name,
    required String email,
    required String password,
    required RegistrationStatus status,
    required bool passwordVisibility,
    String? errorMessage,
  }) = _RegistrationState;
  factory RegistrationState.initial() => const _RegistrationState(
        name: '',
        email: '',
        password: '',
        passwordVisibility: true,
        status: RegistrationStatus.initial,
      );
}
