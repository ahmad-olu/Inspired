import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/constants/enum/suggestion_label_enum.dart';
import 'package:geat/app/constants/enum/suggestion_status.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
class Suggestion with _$Suggestion {
  const factory Suggestion({
    required String uid,
    required String title, //255
    required String description, //255
    required bool isAnonymous,
    required SuggestionStatusX suggestionStatus,
    required SuggestionLabelX suggestionLabel,
    required List<String> votedUserId,
    @JsonKey(name: r'$id') String? id,
    String? username,
  }) = _Suggestion;

  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);
}

@freezed
class SuggestionComment with _$SuggestionComment {
  const factory SuggestionComment({
    required String uid,
    required String suggestionId,
    required String text, //255
    required bool isAnonymous,
    required bool isAdmin,
    @JsonKey(name: r'$id') String? id,
  }) = _SuggestionComment;

  factory SuggestionComment.fromJson(Map<String, dynamic> json) =>
      _$SuggestionCommentFromJson(json);
}
