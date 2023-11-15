part of 'profile_bloc.dart';

enum ProfileStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required AppUser user,
    required AppUser currentLoggedInUser,
    required List<Book> books,
    required List<ReImagined> reImagined,
    required ProfileStatus status,
    required bool isCurrentUser,
    required bool isFollowing,
    String? errorMessage,
  }) = _ProfileState;
  factory ProfileState.initial() => _ProfileState(
        user: AppUser.empty(),
        currentLoggedInUser: AppUser.empty(),
        books: [],
        reImagined: [],
        isCurrentUser: false,
        isFollowing: false,
        status: ProfileStatus.initial,
      );
}
