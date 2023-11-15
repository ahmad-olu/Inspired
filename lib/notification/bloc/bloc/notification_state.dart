part of 'notification_bloc.dart';

enum NotificationStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required NotificationStatus status,
    required List<Notification> notifications,
    String? errorMessage,
  }) = _NotificationState;
  factory NotificationState.initial() => const _NotificationState(
        notifications: [],
        status: NotificationStatus.initial,
      );
}
