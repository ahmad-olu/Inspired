import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';
part 'comment.g.dart';
part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    @JsonKey(name: 'post_id') required String postId,
    required String content, //255
    required String uId,
    @JsonKey(name: r'$id') String? id,
    @JsonKey(name: 'post_type') BookType? postType,
    //@JsonKey(name: 'created_at') DateTime? date,
  }) = _Comment;
  const Comment._();

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
