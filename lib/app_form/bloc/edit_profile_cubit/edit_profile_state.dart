part of 'edit_profile_cubit.dart';

enum EditProfileStatus {
  initial,
  submitting,
  submitted,
  error,
}

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required String username,
    required EditProfileStatus status,
    String? fullname,
    String? website,
    String? bio,
    File? localImage,
    String? imageId,
    String? errorMessage,
    AppUser? val,
  }) = _EditProfileState;
  factory EditProfileState.initial() => const _EditProfileState(
        username: '',
        fullname: '',
        website: '',
        bio: '',
        status: EditProfileStatus.initial,
      );
}
