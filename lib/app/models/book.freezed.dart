// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get title => throw _privateConstructorUsedError;
  bool get draft => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_reimagine')
  bool get canReImagine => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_comment')
  bool get canComment =>
      throw _privateConstructorUsedError; //@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  @JsonKey(name: 'images_id')
  List<String>? get imagesId => throw _privateConstructorUsedError;
  List<BookContent> get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  BookType get postType => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'uID')
  String get uId => throw _privateConstructorUsedError;
  @JsonKey(name: r'$id')
  String? get id => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {String title,
      bool draft,
      @JsonKey(name: 'can_reimagine') bool canReImagine,
      @JsonKey(name: 'can_comment') bool canComment,
      @JsonKey(name: 'images_id') List<String>? imagesId,
      List<BookContent> content,
      @JsonKey(name: 'post_type') BookType postType,
      List<String> likes,
      @JsonKey(name: 'uID') String uId,
      @JsonKey(name: r'$id') String? id,
      List<String>? category});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? draft = null,
    Object? canReImagine = null,
    Object? canComment = null,
    Object? imagesId = freezed,
    Object? content = null,
    Object? postType = null,
    Object? likes = null,
    Object? uId = null,
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      canReImagine: null == canReImagine
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      canComment: null == canComment
          ? _value.canComment
          : canComment // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesId: freezed == imagesId
          ? _value.imagesId
          : imagesId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<BookContent>,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as BookType,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool draft,
      @JsonKey(name: 'can_reimagine') bool canReImagine,
      @JsonKey(name: 'can_comment') bool canComment,
      @JsonKey(name: 'images_id') List<String>? imagesId,
      List<BookContent> content,
      @JsonKey(name: 'post_type') BookType postType,
      List<String> likes,
      @JsonKey(name: 'uID') String uId,
      @JsonKey(name: r'$id') String? id,
      List<String>? category});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? draft = null,
    Object? canReImagine = null,
    Object? canComment = null,
    Object? imagesId = freezed,
    Object? content = null,
    Object? postType = null,
    Object? likes = null,
    Object? uId = null,
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_$BookImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      canReImagine: null == canReImagine
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      canComment: null == canComment
          ? _value.canComment
          : canComment // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesId: freezed == imagesId
          ? _value._imagesId
          : imagesId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<BookContent>,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as BookType,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {required this.title,
      required this.draft,
      @JsonKey(name: 'can_reimagine') required this.canReImagine,
      @JsonKey(name: 'can_comment') required this.canComment,
      @JsonKey(name: 'images_id') required final List<String>? imagesId,
      required final List<BookContent> content,
      @JsonKey(name: 'post_type') required this.postType,
      required final List<String> likes,
      @JsonKey(name: 'uID') required this.uId,
      @JsonKey(name: r'$id') this.id,
      final List<String>? category})
      : _imagesId = imagesId,
        _content = content,
        _likes = likes,
        _category = category;

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final String title;
  @override
  final bool draft;
  @override
  @JsonKey(name: 'can_reimagine')
  final bool canReImagine;
  @override
  @JsonKey(name: 'can_comment')
  final bool canComment;
//@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  final List<String>? _imagesId;
//@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  @override
  @JsonKey(name: 'images_id')
  List<String>? get imagesId {
    final value = _imagesId;
    if (value == null) return null;
    if (_imagesId is EqualUnmodifiableListView) return _imagesId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookContent> _content;
  @override
  List<BookContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  @JsonKey(name: 'post_type')
  final BookType postType;
  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  @JsonKey(name: 'uID')
  final String uId;
  @override
  @JsonKey(name: r'$id')
  final String? id;
  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Book(title: $title, draft: $draft, canReImagine: $canReImagine, canComment: $canComment, imagesId: $imagesId, content: $content, postType: $postType, likes: $likes, uId: $uId, id: $id, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.canReImagine, canReImagine) ||
                other.canReImagine == canReImagine) &&
            (identical(other.canComment, canComment) ||
                other.canComment == canComment) &&
            const DeepCollectionEquality().equals(other._imagesId, _imagesId) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      draft,
      canReImagine,
      canComment,
      const DeepCollectionEquality().hash(_imagesId),
      const DeepCollectionEquality().hash(_content),
      postType,
      const DeepCollectionEquality().hash(_likes),
      uId,
      id,
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String title,
      required final bool draft,
      @JsonKey(name: 'can_reimagine') required final bool canReImagine,
      @JsonKey(name: 'can_comment') required final bool canComment,
      @JsonKey(name: 'images_id') required final List<String>? imagesId,
      required final List<BookContent> content,
      @JsonKey(name: 'post_type') required final BookType postType,
      required final List<String> likes,
      @JsonKey(name: 'uID') required final String uId,
      @JsonKey(name: r'$id') final String? id,
      final List<String>? category}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  String get title;
  @override
  bool get draft;
  @override
  @JsonKey(name: 'can_reimagine')
  bool get canReImagine;
  @override
  @JsonKey(name: 'can_comment')
  bool get canComment;
  @override //@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  @JsonKey(name: 'images_id')
  List<String>? get imagesId;
  @override
  List<BookContent> get content;
  @override
  @JsonKey(name: 'post_type')
  BookType get postType;
  @override
  List<String> get likes;
  @override
  @JsonKey(name: 'uID')
  String get uId;
  @override
  @JsonKey(name: r'$id')
  String? get id;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateBook _$UpdateBookFromJson(Map<String, dynamic> json) {
  return _UpdateBook.fromJson(json);
}

/// @nodoc
mixin _$UpdateBook {
  String get title => throw _privateConstructorUsedError;
  bool get draft => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_reimagine')
  bool get canReImagine => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_comment')
  bool get canComment =>
      throw _privateConstructorUsedError; //@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  @JsonKey(name: 'images_id')
  List<String>? get imagesId => throw _privateConstructorUsedError;
  List<BookContent> get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  BookType get postType => throw _privateConstructorUsedError;
  @JsonKey(name: 'uID')
  String get uId => throw _privateConstructorUsedError;
  @JsonKey(name: r'$id')
  String? get id => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateBookCopyWith<UpdateBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBookCopyWith<$Res> {
  factory $UpdateBookCopyWith(
          UpdateBook value, $Res Function(UpdateBook) then) =
      _$UpdateBookCopyWithImpl<$Res, UpdateBook>;
  @useResult
  $Res call(
      {String title,
      bool draft,
      @JsonKey(name: 'can_reimagine') bool canReImagine,
      @JsonKey(name: 'can_comment') bool canComment,
      @JsonKey(name: 'images_id') List<String>? imagesId,
      List<BookContent> content,
      @JsonKey(name: 'post_type') BookType postType,
      @JsonKey(name: 'uID') String uId,
      @JsonKey(name: r'$id') String? id,
      List<String>? category});
}

/// @nodoc
class _$UpdateBookCopyWithImpl<$Res, $Val extends UpdateBook>
    implements $UpdateBookCopyWith<$Res> {
  _$UpdateBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? draft = null,
    Object? canReImagine = null,
    Object? canComment = null,
    Object? imagesId = freezed,
    Object? content = null,
    Object? postType = null,
    Object? uId = null,
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      canReImagine: null == canReImagine
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      canComment: null == canComment
          ? _value.canComment
          : canComment // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesId: freezed == imagesId
          ? _value.imagesId
          : imagesId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<BookContent>,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as BookType,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateBookImplCopyWith<$Res>
    implements $UpdateBookCopyWith<$Res> {
  factory _$$UpdateBookImplCopyWith(
          _$UpdateBookImpl value, $Res Function(_$UpdateBookImpl) then) =
      __$$UpdateBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool draft,
      @JsonKey(name: 'can_reimagine') bool canReImagine,
      @JsonKey(name: 'can_comment') bool canComment,
      @JsonKey(name: 'images_id') List<String>? imagesId,
      List<BookContent> content,
      @JsonKey(name: 'post_type') BookType postType,
      @JsonKey(name: 'uID') String uId,
      @JsonKey(name: r'$id') String? id,
      List<String>? category});
}

/// @nodoc
class __$$UpdateBookImplCopyWithImpl<$Res>
    extends _$UpdateBookCopyWithImpl<$Res, _$UpdateBookImpl>
    implements _$$UpdateBookImplCopyWith<$Res> {
  __$$UpdateBookImplCopyWithImpl(
      _$UpdateBookImpl _value, $Res Function(_$UpdateBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? draft = null,
    Object? canReImagine = null,
    Object? canComment = null,
    Object? imagesId = freezed,
    Object? content = null,
    Object? postType = null,
    Object? uId = null,
    Object? id = freezed,
    Object? category = freezed,
  }) {
    return _then(_$UpdateBookImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      canReImagine: null == canReImagine
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      canComment: null == canComment
          ? _value.canComment
          : canComment // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesId: freezed == imagesId
          ? _value._imagesId
          : imagesId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<BookContent>,
      postType: null == postType
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as BookType,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateBookImpl implements _UpdateBook {
  const _$UpdateBookImpl(
      {required this.title,
      required this.draft,
      @JsonKey(name: 'can_reimagine') required this.canReImagine,
      @JsonKey(name: 'can_comment') required this.canComment,
      @JsonKey(name: 'images_id') required final List<String>? imagesId,
      required final List<BookContent> content,
      @JsonKey(name: 'post_type') required this.postType,
      @JsonKey(name: 'uID') required this.uId,
      @JsonKey(name: r'$id') this.id,
      final List<String>? category})
      : _imagesId = imagesId,
        _content = content,
        _category = category;

  factory _$UpdateBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateBookImplFromJson(json);

  @override
  final String title;
  @override
  final bool draft;
  @override
  @JsonKey(name: 'can_reimagine')
  final bool canReImagine;
  @override
  @JsonKey(name: 'can_comment')
  final bool canComment;
//@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  final List<String>? _imagesId;
//@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  @override
  @JsonKey(name: 'images_id')
  List<String>? get imagesId {
    final value = _imagesId;
    if (value == null) return null;
    if (_imagesId is EqualUnmodifiableListView) return _imagesId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookContent> _content;
  @override
  List<BookContent> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  @JsonKey(name: 'post_type')
  final BookType postType;
  @override
  @JsonKey(name: 'uID')
  final String uId;
  @override
  @JsonKey(name: r'$id')
  final String? id;
  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateBook(title: $title, draft: $draft, canReImagine: $canReImagine, canComment: $canComment, imagesId: $imagesId, content: $content, postType: $postType, uId: $uId, id: $id, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBookImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.canReImagine, canReImagine) ||
                other.canReImagine == canReImagine) &&
            (identical(other.canComment, canComment) ||
                other.canComment == canComment) &&
            const DeepCollectionEquality().equals(other._imagesId, _imagesId) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      draft,
      canReImagine,
      canComment,
      const DeepCollectionEquality().hash(_imagesId),
      const DeepCollectionEquality().hash(_content),
      postType,
      uId,
      id,
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBookImplCopyWith<_$UpdateBookImpl> get copyWith =>
      __$$UpdateBookImplCopyWithImpl<_$UpdateBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateBookImplToJson(
      this,
    );
  }
}

abstract class _UpdateBook implements UpdateBook {
  const factory _UpdateBook(
      {required final String title,
      required final bool draft,
      @JsonKey(name: 'can_reimagine') required final bool canReImagine,
      @JsonKey(name: 'can_comment') required final bool canComment,
      @JsonKey(name: 'images_id') required final List<String>? imagesId,
      required final List<BookContent> content,
      @JsonKey(name: 'post_type') required final BookType postType,
      @JsonKey(name: 'uID') required final String uId,
      @JsonKey(name: r'$id') final String? id,
      final List<String>? category}) = _$UpdateBookImpl;

  factory _UpdateBook.fromJson(Map<String, dynamic> json) =
      _$UpdateBookImpl.fromJson;

  @override
  String get title;
  @override
  bool get draft;
  @override
  @JsonKey(name: 'can_reimagine')
  bool get canReImagine;
  @override
  @JsonKey(name: 'can_comment')
  bool get canComment;
  @override //@JsonKey(name: 'images_URL') required List<String>? imagesURL,
  @JsonKey(name: 'images_id')
  List<String>? get imagesId;
  @override
  List<BookContent> get content;
  @override
  @JsonKey(name: 'post_type')
  BookType get postType;
  @override
  @JsonKey(name: 'uID')
  String get uId;
  @override
  @JsonKey(name: r'$id')
  String? get id;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBookImplCopyWith<_$UpdateBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookContent _$BookContentFromJson(Map<String, dynamic> json) {
  return _BookContent.fromJson(json);
}

/// @nodoc
mixin _$BookContent {
  String get head => throw _privateConstructorUsedError; //255
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookContentCopyWith<BookContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookContentCopyWith<$Res> {
  factory $BookContentCopyWith(
          BookContent value, $Res Function(BookContent) then) =
      _$BookContentCopyWithImpl<$Res, BookContent>;
  @useResult
  $Res call({String head, String content});
}

/// @nodoc
class _$BookContentCopyWithImpl<$Res, $Val extends BookContent>
    implements $BookContentCopyWith<$Res> {
  _$BookContentCopyWithImpl(this._value, this._then);

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
abstract class _$$BookContentImplCopyWith<$Res>
    implements $BookContentCopyWith<$Res> {
  factory _$$BookContentImplCopyWith(
          _$BookContentImpl value, $Res Function(_$BookContentImpl) then) =
      __$$BookContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String head, String content});
}

/// @nodoc
class __$$BookContentImplCopyWithImpl<$Res>
    extends _$BookContentCopyWithImpl<$Res, _$BookContentImpl>
    implements _$$BookContentImplCopyWith<$Res> {
  __$$BookContentImplCopyWithImpl(
      _$BookContentImpl _value, $Res Function(_$BookContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = null,
    Object? content = null,
  }) {
    return _then(_$BookContentImpl(
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
class _$BookContentImpl implements _BookContent {
  const _$BookContentImpl({required this.head, required this.content});

  factory _$BookContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookContentImplFromJson(json);

  @override
  final String head;
//255
  @override
  final String content;

  @override
  String toString() {
    return 'BookContent(head: $head, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookContentImpl &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, head, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookContentImplCopyWith<_$BookContentImpl> get copyWith =>
      __$$BookContentImplCopyWithImpl<_$BookContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookContentImplToJson(
      this,
    );
  }
}

abstract class _BookContent implements BookContent {
  const factory _BookContent(
      {required final String head,
      required final String content}) = _$BookContentImpl;

  factory _BookContent.fromJson(Map<String, dynamic> json) =
      _$BookContentImpl.fromJson;

  @override
  String get head;
  @override //255
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$BookContentImplCopyWith<_$BookContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
