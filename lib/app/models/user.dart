import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String email,
    required String username,
    required List<String> followers,
    required List<String> following,
    String? fullname, //255
    String? website,
    //@JsonKey(name: 'image_URL') String? imageUrl,
    @JsonKey(name: 'image_id') String? imageId,
    String? bio, //400
    //@JsonKey(name: 'created_at') DateTime? createdAt,
    List<String>? interest, //100
    List<String>? savedBookId,
  }) = _AppUser;

  factory AppUser.empty() => const _AppUser(
        id: '',
        email: '',
        username: '',
        followers: [],
        following: [],
      );

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

@freezed
class UpdateAppUser with _$UpdateAppUser {
  const factory UpdateAppUser({
    required String id,
    required String email,
    required String username,
    String? fullname, //255
    String? website,
    @JsonKey(name: 'image_id') String? imageId,
    String? bio, //400
  }) = _UpdateAppUser;

  factory UpdateAppUser.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppUserFromJson(json);
}
