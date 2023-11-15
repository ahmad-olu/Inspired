// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      title: json['title'] as String,
      draft: json['draft'] as bool,
      canReImagine: json['can_reimagine'] as bool,
      canComment: json['can_comment'] as bool,
      imagesId: (json['images_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map((e) => BookContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      postType: $enumDecode(_$BookTypeEnumMap, json['post_type']),
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      uId: json['uID'] as String,
      id: json[r'$id'] as String?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'draft': instance.draft,
      'can_reimagine': instance.canReImagine,
      'can_comment': instance.canComment,
      'images_id': instance.imagesId,
      'content': instance.content,
      'post_type': _$BookTypeEnumMap[instance.postType]!,
      'likes': instance.likes,
      'uID': instance.uId,
      r'$id': instance.id,
      'category': instance.category,
    };

const _$BookTypeEnumMap = {
  BookType.text: 'text',
  BookType.image: 'image',
};

_$UpdateBookImpl _$$UpdateBookImplFromJson(Map<String, dynamic> json) =>
    _$UpdateBookImpl(
      title: json['title'] as String,
      draft: json['draft'] as bool,
      canReImagine: json['can_reimagine'] as bool,
      canComment: json['can_comment'] as bool,
      imagesId: (json['images_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map((e) => BookContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      postType: $enumDecode(_$BookTypeEnumMap, json['post_type']),
      uId: json['uID'] as String,
      id: json[r'$id'] as String?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UpdateBookImplToJson(_$UpdateBookImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'draft': instance.draft,
      'can_reimagine': instance.canReImagine,
      'can_comment': instance.canComment,
      'images_id': instance.imagesId,
      'content': instance.content,
      'post_type': _$BookTypeEnumMap[instance.postType]!,
      'uID': instance.uId,
      r'$id': instance.id,
      'category': instance.category,
    };

_$BookContentImpl _$$BookContentImplFromJson(Map<String, dynamic> json) =>
    _$BookContentImpl(
      head: json['head'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$BookContentImplToJson(_$BookContentImpl instance) =>
    <String, dynamic>{
      'head': instance.head,
      'content': instance.content,
    };
