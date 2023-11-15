// GENERATED CODE - DO NOT MODIFY BY HAND

part of 're_imagined.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReImaginedImpl _$$ReImaginedImplFromJson(Map<String, dynamic> json) =>
    _$ReImaginedImpl(
      uId: json['uId'] as String,
      postId: json['post_id'] as String,
      postName: json['post_name'] as String,
      postType: $enumDecode(_$BookTypeEnumMap, json['post_type']),
      content: (json['content'] as List<dynamic>)
          .map((e) => ReImaginedContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      id: json[r'$id'] as String?,
    );

Map<String, dynamic> _$$ReImaginedImplToJson(_$ReImaginedImpl instance) =>
    <String, dynamic>{
      'uId': instance.uId,
      'post_id': instance.postId,
      'post_name': instance.postName,
      'post_type': _$BookTypeEnumMap[instance.postType]!,
      'content': instance.content,
      'likes': instance.likes,
      r'$id': instance.id,
    };

const _$BookTypeEnumMap = {
  BookType.text: 'text',
  BookType.image: 'image',
};

_$ReImaginedContentImpl _$$ReImaginedContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ReImaginedContentImpl(
      head: json['head'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ReImaginedContentImplToJson(
        _$ReImaginedContentImpl instance) =>
    <String, dynamic>{
      'head': instance.head,
      'content': instance.content,
    };
