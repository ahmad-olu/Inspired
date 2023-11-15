// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError; //255
  String? get website =>
      throw _privateConstructorUsedError; //@JsonKey(name: 'image_URL') String? imageUrl,
  @JsonKey(name: 'image_id')
  String? get imageId => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError; //400
//@JsonKey(name: 'created_at') DateTime? createdAt,
  List<String>? get interest => throw _privateConstructorUsedError; //100
  List<String>? get savedBookId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      List<String> followers,
      List<String> following,
      String? fullname,
      String? website,
      @JsonKey(name: 'image_id') String? imageId,
      String? bio,
      List<String>? interest,
      List<String>? savedBookId});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? followers = null,
    Object? following = null,
    Object? fullname = freezed,
    Object? website = freezed,
    Object? imageId = freezed,
    Object? bio = freezed,
    Object? interest = freezed,
    Object? savedBookId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      interest: freezed == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      savedBookId: freezed == savedBookId
          ? _value.savedBookId
          : savedBookId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
          _$AppUserImpl value, $Res Function(_$AppUserImpl) then) =
      __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      List<String> followers,
      List<String> following,
      String? fullname,
      String? website,
      @JsonKey(name: 'image_id') String? imageId,
      String? bio,
      List<String>? interest,
      List<String>? savedBookId});
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
      _$AppUserImpl _value, $Res Function(_$AppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? followers = null,
    Object? following = null,
    Object? fullname = freezed,
    Object? website = freezed,
    Object? imageId = freezed,
    Object? bio = freezed,
    Object? interest = freezed,
    Object? savedBookId = freezed,
  }) {
    return _then(_$AppUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      interest: freezed == interest
          ? _value._interest
          : interest // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      savedBookId: freezed == savedBookId
          ? _value._savedBookId
          : savedBookId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserImpl implements _AppUser {
  const _$AppUserImpl(
      {required this.id,
      required this.email,
      required this.username,
      required final List<String> followers,
      required final List<String> following,
      this.fullname,
      this.website,
      @JsonKey(name: 'image_id') this.imageId,
      this.bio,
      final List<String>? interest,
      final List<String>? savedBookId})
      : _followers = followers,
        _following = following,
        _interest = interest,
        _savedBookId = savedBookId;

  factory _$AppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String username;
  final List<String> _followers;
  @override
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<String> _following;
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  @override
  final String? fullname;
//255
  @override
  final String? website;
//@JsonKey(name: 'image_URL') String? imageUrl,
  @override
  @JsonKey(name: 'image_id')
  final String? imageId;
  @override
  final String? bio;
//400
//@JsonKey(name: 'created_at') DateTime? createdAt,
  final List<String>? _interest;
//400
//@JsonKey(name: 'created_at') DateTime? createdAt,
  @override
  List<String>? get interest {
    final value = _interest;
    if (value == null) return null;
    if (_interest is EqualUnmodifiableListView) return _interest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//100
  final List<String>? _savedBookId;
//100
  @override
  List<String>? get savedBookId {
    final value = _savedBookId;
    if (value == null) return null;
    if (_savedBookId is EqualUnmodifiableListView) return _savedBookId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppUser(id: $id, email: $email, username: $username, followers: $followers, following: $following, fullname: $fullname, website: $website, imageId: $imageId, bio: $bio, interest: $interest, savedBookId: $savedBookId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(other._interest, _interest) &&
            const DeepCollectionEquality()
                .equals(other._savedBookId, _savedBookId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      username,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following),
      fullname,
      website,
      imageId,
      bio,
      const DeepCollectionEquality().hash(_interest),
      const DeepCollectionEquality().hash(_savedBookId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserImplToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required final String id,
      required final String email,
      required final String username,
      required final List<String> followers,
      required final List<String> following,
      final String? fullname,
      final String? website,
      @JsonKey(name: 'image_id') final String? imageId,
      final String? bio,
      final List<String>? interest,
      final List<String>? savedBookId}) = _$AppUserImpl;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$AppUserImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get username;
  @override
  List<String> get followers;
  @override
  List<String> get following;
  @override
  String? get fullname;
  @override //255
  String? get website;
  @override //@JsonKey(name: 'image_URL') String? imageUrl,
  @JsonKey(name: 'image_id')
  String? get imageId;
  @override
  String? get bio;
  @override //400
//@JsonKey(name: 'created_at') DateTime? createdAt,
  List<String>? get interest;
  @override //100
  List<String>? get savedBookId;
  @override
  @JsonKey(ignore: true)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAppUser _$UpdateAppUserFromJson(Map<String, dynamic> json) {
  return _UpdateAppUser.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError; //255
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_id')
  String? get imageId => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAppUserCopyWith<UpdateAppUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppUserCopyWith<$Res> {
  factory $UpdateAppUserCopyWith(
          UpdateAppUser value, $Res Function(UpdateAppUser) then) =
      _$UpdateAppUserCopyWithImpl<$Res, UpdateAppUser>;
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      String? fullname,
      String? website,
      @JsonKey(name: 'image_id') String? imageId,
      String? bio});
}

/// @nodoc
class _$UpdateAppUserCopyWithImpl<$Res, $Val extends UpdateAppUser>
    implements $UpdateAppUserCopyWith<$Res> {
  _$UpdateAppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? fullname = freezed,
    Object? website = freezed,
    Object? imageId = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAppUserImplCopyWith<$Res>
    implements $UpdateAppUserCopyWith<$Res> {
  factory _$$UpdateAppUserImplCopyWith(
          _$UpdateAppUserImpl value, $Res Function(_$UpdateAppUserImpl) then) =
      __$$UpdateAppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      String? fullname,
      String? website,
      @JsonKey(name: 'image_id') String? imageId,
      String? bio});
}

/// @nodoc
class __$$UpdateAppUserImplCopyWithImpl<$Res>
    extends _$UpdateAppUserCopyWithImpl<$Res, _$UpdateAppUserImpl>
    implements _$$UpdateAppUserImplCopyWith<$Res> {
  __$$UpdateAppUserImplCopyWithImpl(
      _$UpdateAppUserImpl _value, $Res Function(_$UpdateAppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? fullname = freezed,
    Object? website = freezed,
    Object? imageId = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$UpdateAppUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAppUserImpl implements _UpdateAppUser {
  const _$UpdateAppUserImpl(
      {required this.id,
      required this.email,
      required this.username,
      this.fullname,
      this.website,
      @JsonKey(name: 'image_id') this.imageId,
      this.bio});

  factory _$UpdateAppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAppUserImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String username;
  @override
  final String? fullname;
//255
  @override
  final String? website;
  @override
  @JsonKey(name: 'image_id')
  final String? imageId;
  @override
  final String? bio;

  @override
  String toString() {
    return 'UpdateAppUser(id: $id, email: $email, username: $username, fullname: $fullname, website: $website, imageId: $imageId, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, username, fullname, website, imageId, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppUserImplCopyWith<_$UpdateAppUserImpl> get copyWith =>
      __$$UpdateAppUserImplCopyWithImpl<_$UpdateAppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppUserImplToJson(
      this,
    );
  }
}

abstract class _UpdateAppUser implements UpdateAppUser {
  const factory _UpdateAppUser(
      {required final String id,
      required final String email,
      required final String username,
      final String? fullname,
      final String? website,
      @JsonKey(name: 'image_id') final String? imageId,
      final String? bio}) = _$UpdateAppUserImpl;

  factory _UpdateAppUser.fromJson(Map<String, dynamic> json) =
      _$UpdateAppUserImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get username;
  @override
  String? get fullname;
  @override //255
  String? get website;
  @override
  @JsonKey(name: 'image_id')
  String? get imageId;
  @override
  String? get bio;
  @override
  @JsonKey(ignore: true)
  _$$UpdateAppUserImplCopyWith<_$UpdateAppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
