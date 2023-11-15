import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'type')
enum NotificationType {
  like('like'),
  reImagined('reImagined'),
  follow('follow'),
  comment('comment'),
  rated('rated');

  const NotificationType(this.type);
  final String type;
}

// extension ConvertTweet on String {
//   NotificationType toNotificationTypeEnum() {
//     switch (this) {
//       case 'retweet':
//         return NotificationType.retweet;
//       case 'follow':
//         return NotificationType.follow;
//       case 'reply':
//         return NotificationType.reply;
//       default:
//         return NotificationType.like;
//     }
//   }
// }
