// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 're_imagined_book_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReImaginedBookFormState {
  List<ReImaginedBookFormModel> get content =>
      throw _privateConstructorUsedError;
  ReImaginedBookFormStatus get status => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  String get bookName => throw _privateConstructorUsedError;
  String get bookUserId => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReImaginedBookFormStateCopyWith<ReImaginedBookFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedBookFormStateCopyWith<$Res> {
  factory $ReImaginedBookFormStateCopyWith(ReImaginedBookFormState value,
          $Res Function(ReImaginedBookFormState) then) =
      _$ReImaginedBookFormStateCopyWithImpl<$Res, ReImaginedBookFormState>;
  @useResult
  $Res call(
      {List<ReImaginedBookFormModel> content,
      ReImaginedBookFormStatus status,
      String bookId,
      String bookName,
      String bookUserId,
      String? errorMessage});
}

/// @nodoc
class _$ReImaginedBookFormStateCopyWithImpl<$Res,
        $Val extends ReImaginedBookFormState>
    implements $ReImaginedBookFormStateCopyWith<$Res> {
  _$ReImaginedBookFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
    Object? bookId = null,
    Object? bookName = null,
    Object? bookUserId = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ReImaginedBookFormModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReImaginedBookFormStatus,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      bookUserId: null == bookUserId
          ? _value.bookUserId
          : bookUserId // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReImaginedBookFormStateImplCopyWith<$Res>
    implements $ReImaginedBookFormStateCopyWith<$Res> {
  factory _$$ReImaginedBookFormStateImplCopyWith(
          _$ReImaginedBookFormStateImpl value,
          $Res Function(_$ReImaginedBookFormStateImpl) then) =
      __$$ReImaginedBookFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReImaginedBookFormModel> content,
      ReImaginedBookFormStatus status,
      String bookId,
      String bookName,
      String bookUserId,
      String? errorMessage});
}

/// @nodoc
class __$$ReImaginedBookFormStateImplCopyWithImpl<$Res>
    extends _$ReImaginedBookFormStateCopyWithImpl<$Res,
        _$ReImaginedBookFormStateImpl>
    implements _$$ReImaginedBookFormStateImplCopyWith<$Res> {
  __$$ReImaginedBookFormStateImplCopyWithImpl(
      _$ReImaginedBookFormStateImpl _value,
      $Res Function(_$ReImaginedBookFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
    Object? bookId = null,
    Object? bookName = null,
    Object? bookUserId = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ReImaginedBookFormStateImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ReImaginedBookFormModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReImaginedBookFormStatus,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      bookName: null == bookName
          ? _value.bookName
          : bookName // ignore: cast_nullable_to_non_nullable
              as String,
      bookUserId: null == bookUserId
          ? _value.bookUserId
          : bookUserId // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReImaginedBookFormStateImpl implements _ReImaginedBookFormState {
  const _$ReImaginedBookFormStateImpl(
      {required final List<ReImaginedBookFormModel> content,
      required this.status,
      required this.bookId,
      required this.bookName,
      required this.bookUserId,
      this.errorMessage})
      : _content = content;

  final List<ReImaginedBookFormModel> _content;
  @override
  List<ReImaginedBookFormModel> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final ReImaginedBookFormStatus status;
  @override
  final String bookId;
  @override
  final String bookName;
  @override
  final String bookUserId;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ReImaginedBookFormState(content: $content, status: $status, bookId: $bookId, bookName: $bookName, bookUserId: $bookUserId, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReImaginedBookFormStateImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.bookName, bookName) ||
                other.bookName == bookName) &&
            (identical(other.bookUserId, bookUserId) ||
                other.bookUserId == bookUserId) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      status,
      bookId,
      bookName,
      bookUserId,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReImaginedBookFormStateImplCopyWith<_$ReImaginedBookFormStateImpl>
      get copyWith => __$$ReImaginedBookFormStateImplCopyWithImpl<
          _$ReImaginedBookFormStateImpl>(this, _$identity);
}

abstract class _ReImaginedBookFormState implements ReImaginedBookFormState {
  const factory _ReImaginedBookFormState(
      {required final List<ReImaginedBookFormModel> content,
      required final ReImaginedBookFormStatus status,
      required final String bookId,
      required final String bookName,
      required final String bookUserId,
      final String? errorMessage}) = _$ReImaginedBookFormStateImpl;

  @override
  List<ReImaginedBookFormModel> get content;
  @override
  ReImaginedBookFormStatus get status;
  @override
  String get bookId;
  @override
  String get bookName;
  @override
  String get bookUserId;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ReImaginedBookFormStateImplCopyWith<_$ReImaginedBookFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReImaginedBookFormModel {
  String get id => throw _privateConstructorUsedError;
  String get chapter => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReImaginedBookFormModelCopyWith<ReImaginedBookFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedBookFormModelCopyWith<$Res> {
  factory $ReImaginedBookFormModelCopyWith(ReImaginedBookFormModel value,
          $Res Function(ReImaginedBookFormModel) then) =
      _$ReImaginedBookFormModelCopyWithImpl<$Res, ReImaginedBookFormModel>;
  @useResult
  $Res call({String id, String chapter, String data});
}

/// @nodoc
class _$ReImaginedBookFormModelCopyWithImpl<$Res,
        $Val extends ReImaginedBookFormModel>
    implements $ReImaginedBookFormModelCopyWith<$Res> {
  _$ReImaginedBookFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapter = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReImaginedBookFormModelImplCopyWith<$Res>
    implements $ReImaginedBookFormModelCopyWith<$Res> {
  factory _$$ReImaginedBookFormModelImplCopyWith(
          _$ReImaginedBookFormModelImpl value,
          $Res Function(_$ReImaginedBookFormModelImpl) then) =
      __$$ReImaginedBookFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String chapter, String data});
}

/// @nodoc
class __$$ReImaginedBookFormModelImplCopyWithImpl<$Res>
    extends _$ReImaginedBookFormModelCopyWithImpl<$Res,
        _$ReImaginedBookFormModelImpl>
    implements _$$ReImaginedBookFormModelImplCopyWith<$Res> {
  __$$ReImaginedBookFormModelImplCopyWithImpl(
      _$ReImaginedBookFormModelImpl _value,
      $Res Function(_$ReImaginedBookFormModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapter = null,
    Object? data = null,
  }) {
    return _then(_$ReImaginedBookFormModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReImaginedBookFormModelImpl implements _ReImaginedBookFormModel {
  const _$ReImaginedBookFormModelImpl(
      {required this.id, required this.chapter, required this.data});

  @override
  final String id;
  @override
  final String chapter;
  @override
  final String data;

  @override
  String toString() {
    return 'ReImaginedBookFormModel(id: $id, chapter: $chapter, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReImaginedBookFormModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, chapter, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReImaginedBookFormModelImplCopyWith<_$ReImaginedBookFormModelImpl>
      get copyWith => __$$ReImaginedBookFormModelImplCopyWithImpl<
          _$ReImaginedBookFormModelImpl>(this, _$identity);
}

abstract class _ReImaginedBookFormModel implements ReImaginedBookFormModel {
  const factory _ReImaginedBookFormModel(
      {required final String id,
      required final String chapter,
      required final String data}) = _$ReImaginedBookFormModelImpl;

  @override
  String get id;
  @override
  String get chapter;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$ReImaginedBookFormModelImplCopyWith<_$ReImaginedBookFormModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
