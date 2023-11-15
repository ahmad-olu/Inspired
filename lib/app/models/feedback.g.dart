// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestionImpl _$$SuggestionImplFromJson(Map<String, dynamic> json) =>
    _$SuggestionImpl(
      uid: json['uid'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isAnonymous: json['isAnonymous'] as bool,
      suggestionStatus:
          $enumDecode(_$SuggestionStatusXEnumMap, json['suggestionStatus']),
      suggestionLabel:
          $enumDecode(_$SuggestionLabelXEnumMap, json['suggestionLabel']),
      votedUserId: (json['votedUserId'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      id: json[r'$id'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$SuggestionImplToJson(_$SuggestionImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'description': instance.description,
      'isAnonymous': instance.isAnonymous,
      'suggestionStatus':
          _$SuggestionStatusXEnumMap[instance.suggestionStatus]!,
      'suggestionLabel': _$SuggestionLabelXEnumMap[instance.suggestionLabel]!,
      'votedUserId': instance.votedUserId,
      r'$id': instance.id,
      'username': instance.username,
    };

const _$SuggestionStatusXEnumMap = {
  SuggestionStatusX.requests: 'requests',
  SuggestionStatusX.inProgress: 'inProgress',
  SuggestionStatusX.completed: 'completed',
  SuggestionStatusX.declined: 'declined',
  SuggestionStatusX.duplicated: 'duplicated',
  SuggestionStatusX.unknown: 'unknown',
};

const _$SuggestionLabelXEnumMap = {
  SuggestionLabelX.feature: 'feature',
  SuggestionLabelX.bug: 'bug',
  SuggestionLabelX.unknown: 'unKnown',
};

_$SuggestionCommentImpl _$$SuggestionCommentImplFromJson(
        Map<String, dynamic> json) =>
    _$SuggestionCommentImpl(
      uid: json['uid'] as String,
      suggestionId: json['suggestionId'] as String,
      text: json['text'] as String,
      isAnonymous: json['isAnonymous'] as bool,
      isAdmin: json['isAdmin'] as bool,
      id: json[r'$id'] as String?,
    );

Map<String, dynamic> _$$SuggestionCommentImplToJson(
        _$SuggestionCommentImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'suggestionId': instance.suggestionId,
      'text': instance.text,
      'isAnonymous': instance.isAnonymous,
      'isAdmin': instance.isAdmin,
      r'$id': instance.id,
    };
