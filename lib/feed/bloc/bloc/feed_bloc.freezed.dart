// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBooks,
    required TResult Function() refreshFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBooks,
    TResult? Function()? refreshFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBooks,
    TResult Function()? refreshFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBooks value) loadBooks,
    required TResult Function(_RefreshFeed value) refreshFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBooks value)? loadBooks,
    TResult? Function(_RefreshFeed value)? refreshFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBooks value)? loadBooks,
    TResult Function(_RefreshFeed value)? refreshFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadBooksImplCopyWith<$Res> {
  factory _$$LoadBooksImplCopyWith(
          _$LoadBooksImpl value, $Res Function(_$LoadBooksImpl) then) =
      __$$LoadBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadBooksImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$LoadBooksImpl>
    implements _$$LoadBooksImplCopyWith<$Res> {
  __$$LoadBooksImplCopyWithImpl(
      _$LoadBooksImpl _value, $Res Function(_$LoadBooksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadBooksImpl implements _LoadBooks {
  const _$LoadBooksImpl();

  @override
  String toString() {
    return 'FeedEvent.loadBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBooks,
    required TResult Function() refreshFeed,
  }) {
    return loadBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBooks,
    TResult? Function()? refreshFeed,
  }) {
    return loadBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBooks,
    TResult Function()? refreshFeed,
    required TResult orElse(),
  }) {
    if (loadBooks != null) {
      return loadBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBooks value) loadBooks,
    required TResult Function(_RefreshFeed value) refreshFeed,
  }) {
    return loadBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBooks value)? loadBooks,
    TResult? Function(_RefreshFeed value)? refreshFeed,
  }) {
    return loadBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBooks value)? loadBooks,
    TResult Function(_RefreshFeed value)? refreshFeed,
    required TResult orElse(),
  }) {
    if (loadBooks != null) {
      return loadBooks(this);
    }
    return orElse();
  }
}

abstract class _LoadBooks implements FeedEvent {
  const factory _LoadBooks() = _$LoadBooksImpl;
}

/// @nodoc
abstract class _$$RefreshFeedImplCopyWith<$Res> {
  factory _$$RefreshFeedImplCopyWith(
          _$RefreshFeedImpl value, $Res Function(_$RefreshFeedImpl) then) =
      __$$RefreshFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshFeedImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$RefreshFeedImpl>
    implements _$$RefreshFeedImplCopyWith<$Res> {
  __$$RefreshFeedImplCopyWithImpl(
      _$RefreshFeedImpl _value, $Res Function(_$RefreshFeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshFeedImpl implements _RefreshFeed {
  const _$RefreshFeedImpl();

  @override
  String toString() {
    return 'FeedEvent.refreshFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshFeedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBooks,
    required TResult Function() refreshFeed,
  }) {
    return refreshFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadBooks,
    TResult? Function()? refreshFeed,
  }) {
    return refreshFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBooks,
    TResult Function()? refreshFeed,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBooks value) loadBooks,
    required TResult Function(_RefreshFeed value) refreshFeed,
  }) {
    return refreshFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBooks value)? loadBooks,
    TResult? Function(_RefreshFeed value)? refreshFeed,
  }) {
    return refreshFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBooks value)? loadBooks,
    TResult Function(_RefreshFeed value)? refreshFeed,
    required TResult orElse(),
  }) {
    if (refreshFeed != null) {
      return refreshFeed(this);
    }
    return orElse();
  }
}

abstract class _RefreshFeed implements FeedEvent {
  const factory _RefreshFeed() = _$RefreshFeedImpl;
}

/// @nodoc
mixin _$FeedState {
  List<Book> get books => throw _privateConstructorUsedError;
  FeedStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String get lastItemId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
  @useResult
  $Res call(
      {List<Book> books,
      FeedStatus status,
      String? errorMessage,
      bool hasMore,
      String lastItemId});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? hasMore = null,
    Object? lastItemId = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastItemId: null == lastItemId
          ? _value.lastItemId
          : lastItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedStateImplCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$$FeedStateImplCopyWith(
          _$FeedStateImpl value, $Res Function(_$FeedStateImpl) then) =
      __$$FeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Book> books,
      FeedStatus status,
      String? errorMessage,
      bool hasMore,
      String lastItemId});
}

/// @nodoc
class __$$FeedStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateImpl>
    implements _$$FeedStateImplCopyWith<$Res> {
  __$$FeedStateImplCopyWithImpl(
      _$FeedStateImpl _value, $Res Function(_$FeedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? hasMore = null,
    Object? lastItemId = null,
  }) {
    return _then(_$FeedStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastItemId: null == lastItemId
          ? _value.lastItemId
          : lastItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeedStateImpl implements _FeedState {
  const _$FeedStateImpl(
      {required final List<Book> books,
      required this.status,
      this.errorMessage,
      this.hasMore = true,
      this.lastItemId = ''})
      : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final FeedStatus status;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final String lastItemId;

  @override
  String toString() {
    return 'FeedState(books: $books, status: $status, errorMessage: $errorMessage, hasMore: $hasMore, lastItemId: $lastItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.lastItemId, lastItemId) ||
                other.lastItemId == lastItemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      status,
      errorMessage,
      hasMore,
      lastItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      __$$FeedStateImplCopyWithImpl<_$FeedStateImpl>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {required final List<Book> books,
      required final FeedStatus status,
      final String? errorMessage,
      final bool hasMore,
      final String lastItemId}) = _$FeedStateImpl;

  @override
  List<Book> get books;
  @override
  FeedStatus get status;
  @override
  String? get errorMessage;
  @override
  bool get hasMore;
  @override
  String get lastItemId;
  @override
  @JsonKey(ignore: true)
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
