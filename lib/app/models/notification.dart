import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/notification_type_enum.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required String uId,
    @JsonKey(name: 'post_id') required String postID,
    required String message, //255
    @JsonKey(name: 'notification_type')
    required NotificationType notificationType,
    @JsonKey(name: r'$id') String? id,
    // @JsonKey(name: 'created_at') required DateTime date,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
