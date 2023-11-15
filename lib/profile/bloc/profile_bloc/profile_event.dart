part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserData({required String uid}) = _GetUserData;
  const factory ProfileEvent.followUser() = _FollowUser;
  const factory ProfileEvent.emptyPage() = _EmptyPage;
  const factory ProfileEvent.initCurrentUser() = _InitCurrentUser;
}
