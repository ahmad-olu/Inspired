// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 're_imagined.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReImagined _$ReImaginedFromJson(Map<String, dynamic> json) {
  return _ReImagined.fromJson(json);
}

/// @nodoc
mixin _$ReImagined {
  String get uId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_name')
  String get postName => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  BookType get postType => throw _privateConstructorUsedError;
  List<ReImaginedContent> get content => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  @JsonKey(name: r'$id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReImaginedCopyWith<ReImagined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedCopyWith<$Res> {
  factory $ReImaginedCopyWith(
          ReImagined value, $Res Function(ReImagined) then) =
      _$ReImaginedCopyWithImpl<$Res, ReImagined>;
  @useResult
  $Res call(
      {String uId,
      @JsonKey(name: 'post_id') String postId,
      @JsonKey(name: 'post_name') String postName,
      @JsonKey(name: 'post_type') BookType postType,
      List<ReImaginedContent> content,
      List<String> likes,
      @JsonKey(name: r'$id') String? id});
}

/// @nodoc
class _$ReImaginedCopyWithImpl<$Res, $Val extends ReImagined>
    implements $ReImaginedCopyWith<$Res> {
  _$ReImaginedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = null,
    Object? postId = null,
    Object? postName = null,
    Object? postType = null,
    Object? content = null,
    Object? likes = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postName: null == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as BookType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ReImaginedContent>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReImaginedImplCopyWith<$Res>
    implements $ReImaginedCopyWith<$Res> {
  factory _$$ReImaginedImplCopyWith(
          _$ReImaginedImpl value, $Res Function(_$ReImaginedImpl) then) =
      __$$ReImaginedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uId,
      @JsonKey(name: 'post_id') String postId,
      @JsonKey(name: 'post_name') String postName,
      @JsonKey(name: 'post_type') BookType postType,
      List<ReImaginedContent> content,
      List<String> likes,
      @JsonKey(name: r'$id') String? id});
}

/// @nodoc
class __$$ReImaginedImplCopyWithImpl<$Res>
    extends _$ReImaginedCopyWithImpl<$Res, _$ReImaginedImpl>
    implements _$$ReImaginedImplCopyWith<$Res> {
  __$$ReImaginedImplCopyWithImpl(
      _$ReImaginedImpl _value, $Res Function(_$ReImaginedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uId = null,
    Object? postId = null,
    Object? postName = null,
    Object? postType = null,
    Object? content = null,
    Object? likes = null,
    Object? id = freezed,
  }) {
    return _then(_$ReImaginedImpl(
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postName: null == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as BookType,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ReImaginedContent>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReImaginedImpl implements _ReImagined {
  const _$ReImaginedImpl(
      {required this.uId,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'post_name') required this.postName,
      @JsonKey(name: 'post_type') required this.postType,
      required final List<ReImaginedContent> content,
      required final List<String> likes,
      @JsonKey(name: r'$id') this.id})
      : _content = content,
        _likes = likes;

  factory _$ReImaginedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReImaginedImplFromJson(json);

  @override
  final String uId;
  @override
  @JsonKey(name: 'post_id')
  final String postId;
  @override
  @JsonKey(name: 'post_name')
  final String postName;
  @override
  @JsonKey(name: 'post_type')
  final BookType postType;
  final List<ReImaginedContent> _content;
  @override
  List<ReImaginedContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  @JsonKey(name: r'$id')
  final String? id;

  @override
  String toString() {
    return 'ReImagined(uId: $uId, postId: $postId, postName: $postName, postType: $postType, content: $content, likes: $likes, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReImaginedImpl &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postName, postName) ||
                other.postName == postName) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uId,
      postId,
      postName,
      postType,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_likes),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReImaginedImplCopyWith<_$ReImaginedImpl> get copyWith =>
      __$$ReImaginedImplCopyWithImpl<_$ReImaginedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReImaginedImplToJson(
      this,
    );
  }
}

abstract class _ReImagined implements ReImagined {
  const factory _ReImagined(
      {required final String uId,
      @JsonKey(name: 'post_id') required final String postId,
      @JsonKey(name: 'post_name') required final String postName,
      @JsonKey(name: 'post_type') required final BookType postType,
      required final List<ReImaginedContent> content,
      required final List<String> likes,
      @JsonKey(name: r'$id') final String? id}) = _$ReImaginedImpl;

  factory _ReImagined.fromJson(Map<String, dynamic> json) =
      _$ReImaginedImpl.fromJson;

  @override
  String get uId;
  @override
  @JsonKey(name: 'post_id')
  String get postId;
  @override
  @JsonKey(name: 'post_name')
  String get postName;
  @override
  @JsonKey(name: 'post_type')
  BookType get postType;
  @override
  List<ReImaginedContent> get content;
  @override
  List<String> get likes;
  @override
  @JsonKey(name: r'$id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ReImaginedImplCopyWith<_$ReImaginedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReImaginedContent _$ReImaginedContentFromJson(Map<String, dynamic> json) {
  return _ReImaginedContent.fromJson(json);
}

/// @nodoc
mixin _$ReImaginedContent {
  String get head => throw _privateConstructorUsedError; //255
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReImaginedContentCopyWith<ReImaginedContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedContentCopyWith<$Res> {
  factory $ReImaginedContentCopyWith(
          ReImaginedContent value, $Res Function(ReImaginedContent) then) =
      _$ReImaginedContentCopyWithImpl<$Res, ReImaginedContent>;
  @useResult
  $Res call({String head, String content});
}

/// @nodoc
class _$ReImaginedContentCopyWithImpl<$Res, $Val extends ReImaginedContent>
    implements $ReImaginedContentCopyWith<$Res> {
  _$ReImaginedContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReImaginedContentImplCopyWith<$Res>
    implements $ReImaginedContentCopyWith<$Res> {
  factory _$$ReImaginedContentImplCopyWith(_$ReImaginedContentImpl value,
          $Res Function(_$ReImaginedContentImpl) then) =
      __$$ReImaginedContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String head, String content});
}

/// @nodoc
class __$$ReImaginedContentImplCopyWithImpl<$Res>
    extends _$ReImaginedContentCopyWithImpl<$Res, _$ReImaginedContentImpl>
    implements _$$ReImaginedContentImplCopyWith<$Res> {
  __$$ReImaginedContentImplCopyWithImpl(_$ReImaginedContentImpl _value,
      $Res Function(_$ReImaginedContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = null,
    Object? content = null,
  }) {
    return _then(_$ReImaginedContentImpl(
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReImaginedContentImpl implements _ReImaginedContent {
  const _$ReImaginedContentImpl({required this.head, required this.content});

  factory _$ReImaginedContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReImaginedContentImplFromJson(json);

  @override
  final String head;
//255
  @override
  final String content;

  @override
  String toString() {
    return 'ReImaginedContent(head: $head, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReImaginedContentImpl &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, head, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReImaginedContentImplCopyWith<_$ReImaginedContentImpl> get copyWith =>
      __$$ReImaginedContentImplCopyWithImpl<_$ReImaginedContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReImaginedContentImplToJson(
      this,
    );
  }
}

abstract class _ReImaginedContent implements ReImaginedContent {
  const factory _ReImaginedContent(
      {required final String head,
      required final String content}) = _$ReImaginedContentImpl;

  factory _ReImaginedContent.fromJson(Map<String, dynamic> json) =
      _$ReImaginedContentImpl.fromJson;

  @override
  String get head;
  @override //255
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ReImaginedContentImplCopyWith<_$ReImaginedContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
