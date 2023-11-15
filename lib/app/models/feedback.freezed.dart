// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Suggestion _$SuggestionFromJson(Map<String, dynamic> json) {
  return _Suggestion.fromJson(json);
}

/// @nodoc
mixin _$Suggestion {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError; //255
  String get description => throw _privateConstructorUsedError; //255
  bool get isAnonymous => throw _privateConstructorUsedError;
  SuggestionStatusX get suggestionStatus => throw _privateConstructorUsedError;
  SuggestionLabelX get suggestionLabel => throw _privateConstructorUsedError;
  List<String> get votedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: r'$id')
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionCopyWith<Suggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionCopyWith<$Res> {
  factory $SuggestionCopyWith(
          Suggestion value, $Res Function(Suggestion) then) =
      _$SuggestionCopyWithImpl<$Res, Suggestion>;
  @useResult
  $Res call(
      {String uid,
      String title,
      String description,
      bool isAnonymous,
      SuggestionStatusX suggestionStatus,
      SuggestionLabelX suggestionLabel,
      List<String> votedUserId,
      @JsonKey(name: r'$id') String? id,
      String? username});
}

/// @nodoc
class _$SuggestionCopyWithImpl<$Res, $Val extends Suggestion>
    implements $SuggestionCopyWith<$Res> {
  _$SuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? description = null,
    Object? isAnonymous = null,
    Object? suggestionStatus = null,
    Object? suggestionLabel = null,
    Object? votedUserId = null,
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      suggestionStatus: null == suggestionStatus
          ? _value.suggestionStatus
          : suggestionStatus // ignore: cast_nullable_to_non_nullable
              as SuggestionStatusX,
      suggestionLabel: null == suggestionLabel
          ? _value.suggestionLabel
          : suggestionLabel // ignore: cast_nullable_to_non_nullable
              as SuggestionLabelX,
      votedUserId: null == votedUserId
          ? _value.votedUserId
          : votedUserId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestionImplCopyWith<$Res>
    implements $SuggestionCopyWith<$Res> {
  factory _$$SuggestionImplCopyWith(
          _$SuggestionImpl value, $Res Function(_$SuggestionImpl) then) =
      __$$SuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String title,
      String description,
      bool isAnonymous,
      SuggestionStatusX suggestionStatus,
      SuggestionLabelX suggestionLabel,
      List<String> votedUserId,
      @JsonKey(name: r'$id') String? id,
      String? username});
}

/// @nodoc
class __$$SuggestionImplCopyWithImpl<$Res>
    extends _$SuggestionCopyWithImpl<$Res, _$SuggestionImpl>
    implements _$$SuggestionImplCopyWith<$Res> {
  __$$SuggestionImplCopyWithImpl(
      _$SuggestionImpl _value, $Res Function(_$SuggestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? description = null,
    Object? isAnonymous = null,
    Object? suggestionStatus = null,
    Object? suggestionLabel = null,
    Object? votedUserId = null,
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$SuggestionImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      suggestionStatus: null == suggestionStatus
          ? _value.suggestionStatus
          : suggestionStatus // ignore: cast_nullable_to_non_nullable
              as SuggestionStatusX,
      suggestionLabel: null == suggestionLabel
          ? _value.suggestionLabel
          : suggestionLabel // ignore: cast_nullable_to_non_nullable
              as SuggestionLabelX,
      votedUserId: null == votedUserId
          ? _value._votedUserId
          : votedUserId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestionImpl implements _Suggestion {
  const _$SuggestionImpl(
      {required this.uid,
      required this.title,
      required this.description,
      required this.isAnonymous,
      required this.suggestionStatus,
      required this.suggestionLabel,
      required final List<String> votedUserId,
      @JsonKey(name: r'$id') this.id,
      this.username})
      : _votedUserId = votedUserId;

  factory _$SuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestionImplFromJson(json);

  @override
  final String uid;
  @override
  final String title;
//255
  @override
  final String description;
//255
  @override
  final bool isAnonymous;
  @override
  final SuggestionStatusX suggestionStatus;
  @override
  final SuggestionLabelX suggestionLabel;
  final List<String> _votedUserId;
  @override
  List<String> get votedUserId {
    if (_votedUserId is EqualUnmodifiableListView) return _votedUserId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votedUserId);
  }

  @override
  @JsonKey(name: r'$id')
  final String? id;
  @override
  final String? username;

  @override
  String toString() {
    return 'Suggestion(uid: $uid, title: $title, description: $description, isAnonymous: $isAnonymous, suggestionStatus: $suggestionStatus, suggestionLabel: $suggestionLabel, votedUserId: $votedUserId, id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.suggestionStatus, suggestionStatus) ||
                other.suggestionStatus == suggestionStatus) &&
            (identical(other.suggestionLabel, suggestionLabel) ||
                other.suggestionLabel == suggestionLabel) &&
            const DeepCollectionEquality()
                .equals(other._votedUserId, _votedUserId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      title,
      description,
      isAnonymous,
      suggestionStatus,
      suggestionLabel,
      const DeepCollectionEquality().hash(_votedUserId),
      id,
      username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionImplCopyWith<_$SuggestionImpl> get copyWith =>
      __$$SuggestionImplCopyWithImpl<_$SuggestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestionImplToJson(
      this,
    );
  }
}

abstract class _Suggestion implements Suggestion {
  const factory _Suggestion(
      {required final String uid,
      required final String title,
      required final String description,
      required final bool isAnonymous,
      required final SuggestionStatusX suggestionStatus,
      required final SuggestionLabelX suggestionLabel,
      required final List<String> votedUserId,
      @JsonKey(name: r'$id') final String? id,
      final String? username}) = _$SuggestionImpl;

  factory _Suggestion.fromJson(Map<String, dynamic> json) =
      _$SuggestionImpl.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override //255
  String get description;
  @override //255
  bool get isAnonymous;
  @override
  SuggestionStatusX get suggestionStatus;
  @override
  SuggestionLabelX get suggestionLabel;
  @override
  List<String> get votedUserId;
  @override
  @JsonKey(name: r'$id')
  String? get id;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$SuggestionImplCopyWith<_$SuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuggestionComment _$SuggestionCommentFromJson(Map<String, dynamic> json) {
  return _SuggestionComment.fromJson(json);
}

/// @nodoc
mixin _$SuggestionComment {
  String get uid => throw _privateConstructorUsedError;
  String get suggestionId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError; //255
  bool get isAnonymous => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: r'$id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionCommentCopyWith<SuggestionComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionCommentCopyWith<$Res> {
  factory $SuggestionCommentCopyWith(
          SuggestionComment value, $Res Function(SuggestionComment) then) =
      _$SuggestionCommentCopyWithImpl<$Res, SuggestionComment>;
  @useResult
  $Res call(
      {String uid,
      String suggestionId,
      String text,
      bool isAnonymous,
      bool isAdmin,
      @JsonKey(name: r'$id') String? id});
}

/// @nodoc
class _$SuggestionCommentCopyWithImpl<$Res, $Val extends SuggestionComment>
    implements $SuggestionCommentCopyWith<$Res> {
  _$SuggestionCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? suggestionId = null,
    Object? text = null,
    Object? isAnonymous = null,
    Object? isAdmin = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      suggestionId: null == suggestionId
          ? _value.suggestionId
          : suggestionId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestionCommentImplCopyWith<$Res>
    implements $SuggestionCommentCopyWith<$Res> {
  factory _$$SuggestionCommentImplCopyWith(_$SuggestionCommentImpl value,
          $Res Function(_$SuggestionCommentImpl) then) =
      __$$SuggestionCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String suggestionId,
      String text,
      bool isAnonymous,
      bool isAdmin,
      @JsonKey(name: r'$id') String? id});
}

/// @nodoc
class __$$SuggestionCommentImplCopyWithImpl<$Res>
    extends _$SuggestionCommentCopyWithImpl<$Res, _$SuggestionCommentImpl>
    implements _$$SuggestionCommentImplCopyWith<$Res> {
  __$$SuggestionCommentImplCopyWithImpl(_$SuggestionCommentImpl _value,
      $Res Function(_$SuggestionCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? suggestionId = null,
    Object? text = null,
    Object? isAnonymous = null,
    Object? isAdmin = null,
    Object? id = freezed,
  }) {
    return _then(_$SuggestionCommentImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      suggestionId: null == suggestionId
          ? _value.suggestionId
          : suggestionId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestionCommentImpl implements _SuggestionComment {
  const _$SuggestionCommentImpl(
      {required this.uid,
      required this.suggestionId,
      required this.text,
      required this.isAnonymous,
      required this.isAdmin,
      @JsonKey(name: r'$id') this.id});

  factory _$SuggestionCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestionCommentImplFromJson(json);

  @override
  final String uid;
  @override
  final String suggestionId;
  @override
  final String text;
//255
  @override
  final bool isAnonymous;
  @override
  final bool isAdmin;
  @override
  @JsonKey(name: r'$id')
  final String? id;

  @override
  String toString() {
    return 'SuggestionComment(uid: $uid, suggestionId: $suggestionId, text: $text, isAnonymous: $isAnonymous, isAdmin: $isAdmin, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionCommentImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.suggestionId, suggestionId) ||
                other.suggestionId == suggestionId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, suggestionId, text, isAnonymous, isAdmin, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionCommentImplCopyWith<_$SuggestionCommentImpl> get copyWith =>
      __$$SuggestionCommentImplCopyWithImpl<_$SuggestionCommentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestionCommentImplToJson(
      this,
    );
  }
}

abstract class _SuggestionComment implements SuggestionComment {
  const factory _SuggestionComment(
      {required final String uid,
      required final String suggestionId,
      required final String text,
      required final bool isAnonymous,
      required final bool isAdmin,
      @JsonKey(name: r'$id') final String? id}) = _$SuggestionCommentImpl;

  factory _SuggestionComment.fromJson(Map<String, dynamic> json) =
      _$SuggestionCommentImpl.fromJson;

  @override
  String get uid;
  @override
  String get suggestionId;
  @override
  String get text;
  @override //255
  bool get isAnonymous;
  @override
  bool get isAdmin;
  @override
  @JsonKey(name: r'$id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$SuggestionCommentImplCopyWith<_$SuggestionCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
