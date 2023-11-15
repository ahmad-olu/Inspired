// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      uId: json['uId'] as String,
      postID: json['post_id'] as String,
      message: json['message'] as String,
      notificationType:
          $enumDecode(_$NotificationTypeEnumMap, json['notification_type']),
      id: json[r'$id'] as String?,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'uId': instance.uId,
      'post_id': instance.postID,
      'message': instance.message,
      'notification_type':
          _$NotificationTypeEnumMap[instance.notificationType]!,
      r'$id': instance.id,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.like: 'like',
  NotificationType.reImagined: 'reImagined',
  NotificationType.follow: 'follow',
  NotificationType.comment: 'comment',
  NotificationType.rated: 'rated',
};
