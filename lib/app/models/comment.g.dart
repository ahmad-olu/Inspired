// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      postId: json['post_id'] as String,
      content: json['content'] as String,
      uId: json['uId'] as String,
      id: json[r'$id'] as String?,
      postType: $enumDecodeNullable(_$BookTypeEnumMap, json['post_type']),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'content': instance.content,
      'uId': instance.uId,
      r'$id': instance.id,
      'post_type': _$BookTypeEnumMap[instance.postType],
    };

const _$BookTypeEnumMap = {
  BookType.text: 'text',
  BookType.image: 'image',
};
