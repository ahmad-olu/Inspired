import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/post_type_enum.dart';

part 're_imagined.freezed.dart';
part 're_imagined.g.dart';

@freezed
class ReImagined with _$ReImagined {
  const factory ReImagined({
    required String uId,
    @JsonKey(name: 'post_id') required String postId,
    @JsonKey(name: 'post_name') required String postName,
    @JsonKey(name: 'post_type') required BookType postType,
    required List<ReImaginedContent> content,
    required List<String> likes,
    @JsonKey(name: r'$id') String? id,
    //@JsonKey(name: 'created_at') DateTime? date,
  }) = _ReImagined;

  factory ReImagined.fromJson(Map<String, dynamic> json) =>
      _$ReImaginedFromJson(json);
}

@freezed
class ReImaginedContent with _$ReImaginedContent {
  const factory ReImaginedContent({
    required String head, //255
    required String content, //5000
  }) = _ReImaginedContent;

  factory ReImaginedContent.fromJson(Map<String, dynamic> json) =>
      _$ReImaginedContentFromJson(json);
}
