// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      fullname: json['fullname'] as String?,
      website: json['website'] as String?,
      imageId: json['image_id'] as String?,
      bio: json['bio'] as String?,
      interest: (json['interest'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      savedBookId: (json['savedBookId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'followers': instance.followers,
      'following': instance.following,
      'fullname': instance.fullname,
      'website': instance.website,
      'image_id': instance.imageId,
      'bio': instance.bio,
      'interest': instance.interest,
      'savedBookId': instance.savedBookId,
    };

_$UpdateAppUserImpl _$$UpdateAppUserImplFromJson(Map<String, dynamic> json) =>
    _$UpdateAppUserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String?,
      website: json['website'] as String?,
      imageId: json['image_id'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$$UpdateAppUserImplToJson(_$UpdateAppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fullname': instance.fullname,
      'website': instance.website,
      'image_id': instance.imageId,
      'bio': instance.bio,
    };
