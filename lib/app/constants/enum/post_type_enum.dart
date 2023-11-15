import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'type')
enum BookType {
  text('text'),
  image('image');

  const BookType(this.type);
  final String type;
}

// extension ConvertTweet on String {
//   BookType toTweetTypeEnum() {
//     switch (this) {
//       case 'text':
//         return BookType.text;
//       case 'image':
//         return BookType.image;
//       default:
//         return BookType.text;
//     }
//   }
// }
