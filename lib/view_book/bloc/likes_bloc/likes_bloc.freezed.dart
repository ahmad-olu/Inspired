// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initialize,
    required TResult Function() toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initialize,
    TResult? Function()? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initialize,
    TResult Function()? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Toggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Toggle value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesEventCopyWith<$Res> {
  factory $LikesEventCopyWith(
          LikesEvent value, $Res Function(LikesEvent) then) =
      _$LikesEventCopyWithImpl<$Res, LikesEvent>;
}

/// @nodoc
class _$LikesEventCopyWithImpl<$Res, $Val extends LikesEvent>
    implements $LikesEventCopyWith<$Res> {
  _$LikesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$InitializeImpl(
      null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'LikesEvent.initialize(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initialize,
    required TResult Function() toggle,
  }) {
    return initialize(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initialize,
    TResult? Function()? toggle,
  }) {
    return initialize?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initialize,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Toggle value) toggle,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Toggle value)? toggle,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements LikesEvent {
  const factory _Initialize(final Book book) = _$InitializeImpl;

  Book get book;
  @JsonKey(ignore: true)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleImplCopyWith<$Res> {
  factory _$$ToggleImplCopyWith(
          _$ToggleImpl value, $Res Function(_$ToggleImpl) then) =
      __$$ToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleImplCopyWithImpl<$Res>
    extends _$LikesEventCopyWithImpl<$Res, _$ToggleImpl>
    implements _$$ToggleImplCopyWith<$Res> {
  __$$ToggleImplCopyWithImpl(
      _$ToggleImpl _value, $Res Function(_$ToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleImpl implements _Toggle {
  const _$ToggleImpl();

  @override
  String toString() {
    return 'LikesEvent.toggle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initialize,
    required TResult Function() toggle,
  }) {
    return toggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initialize,
    TResult? Function()? toggle,
  }) {
    return toggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initialize,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Toggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Toggle value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _Toggle implements LikesEvent {
  const factory _Toggle() = _$ToggleImpl;
}

/// @nodoc
mixin _$LikesState {
  bool get isLiked => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  String get currentUserName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikesStateCopyWith<LikesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesStateCopyWith<$Res> {
  factory $LikesStateCopyWith(
          LikesState value, $Res Function(LikesState) then) =
      _$LikesStateCopyWithImpl<$Res, LikesState>;
  @useResult
  $Res call(
      {bool isLiked,
      String bookId,
      List<String> likes,
      String currentUserName});
}

/// @nodoc
class _$LikesStateCopyWithImpl<$Res, $Val extends LikesState>
    implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? bookId = null,
    Object? likes = null,
    Object? currentUserName = null,
  }) {
    return _then(_value.copyWith(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentUserName: null == currentUserName
          ? _value.currentUserName
          : currentUserName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikesStateImplCopyWith<$Res>
    implements $LikesStateCopyWith<$Res> {
  factory _$$LikesStateImplCopyWith(
          _$LikesStateImpl value, $Res Function(_$LikesStateImpl) then) =
      __$$LikesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLiked,
      String bookId,
      List<String> likes,
      String currentUserName});
}

/// @nodoc
class __$$LikesStateImplCopyWithImpl<$Res>
    extends _$LikesStateCopyWithImpl<$Res, _$LikesStateImpl>
    implements _$$LikesStateImplCopyWith<$Res> {
  __$$LikesStateImplCopyWithImpl(
      _$LikesStateImpl _value, $Res Function(_$LikesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLiked = null,
    Object? bookId = null,
    Object? likes = null,
    Object? currentUserName = null,
  }) {
    return _then(_$LikesStateImpl(
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentUserName: null == currentUserName
          ? _value.currentUserName
          : currentUserName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LikesStateImpl implements _LikesState {
  _$LikesStateImpl(
      {required this.isLiked,
      required this.bookId,
      required final List<String> likes,
      required this.currentUserName})
      : _likes = likes;

  @override
  final bool isLiked;
  @override
  final String bookId;
  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  final String currentUserName;

  @override
  String toString() {
    return 'LikesState(isLiked: $isLiked, bookId: $bookId, likes: $likes, currentUserName: $currentUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikesStateImpl &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.currentUserName, currentUserName) ||
                other.currentUserName == currentUserName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked, bookId,
      const DeepCollectionEquality().hash(_likes), currentUserName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikesStateImplCopyWith<_$LikesStateImpl> get copyWith =>
      __$$LikesStateImplCopyWithImpl<_$LikesStateImpl>(this, _$identity);
}

abstract class _LikesState implements LikesState {
  factory _LikesState(
      {required final bool isLiked,
      required final String bookId,
      required final List<String> likes,
      required final String currentUserName}) = _$LikesStateImpl;

  @override
  bool get isLiked;
  @override
  String get bookId;
  @override
  List<String> get likes;
  @override
  String get currentUserName;
  @override
  @JsonKey(ignore: true)
  _$$LikesStateImplCopyWith<_$LikesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
