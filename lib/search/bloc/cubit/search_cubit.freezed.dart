// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  SearchStatus get status => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  int get searchType => throw _privateConstructorUsedError;
  List<AppUser>? get users => throw _privateConstructorUsedError;
  List<Book>? get books => throw _privateConstructorUsedError;
  List<ReImagined>? get reImagined => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {SearchStatus status,
      List<String> categories,
      int searchType,
      List<AppUser>? users,
      List<Book>? books,
      List<ReImagined>? reImagined,
      String? errorMessage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? searchType = null,
    Object? users = freezed,
    Object? books = freezed,
    Object? reImagined = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>?,
      books: freezed == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
      reImagined: freezed == reImagined
          ? _value.reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchStatus status,
      List<String> categories,
      int searchType,
      List<AppUser>? users,
      List<Book>? books,
      List<ReImagined>? reImagined,
      String? errorMessage});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? searchType = null,
    Object? users = freezed,
    Object? books = freezed,
    Object? reImagined = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>?,
      books: freezed == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
      reImagined: freezed == reImagined
          ? _value._reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required this.status,
      required final List<String> categories,
      required this.searchType,
      final List<AppUser>? users,
      final List<Book>? books,
      final List<ReImagined>? reImagined,
      this.errorMessage})
      : _categories = categories,
        _users = users,
        _books = books,
        _reImagined = reImagined;

  @override
  final SearchStatus status;
  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final int searchType;
  final List<AppUser>? _users;
  @override
  List<AppUser>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Book>? _books;
  @override
  List<Book>? get books {
    final value = _books;
    if (value == null) return null;
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReImagined>? _reImagined;
  @override
  List<ReImagined>? get reImagined {
    final value = _reImagined;
    if (value == null) return null;
    if (_reImagined is EqualUnmodifiableListView) return _reImagined;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchState(status: $status, categories: $categories, searchType: $searchType, users: $users, books: $books, reImagined: $reImagined, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality()
                .equals(other._reImagined, _reImagined) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_categories),
      searchType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_reImagined),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final SearchStatus status,
      required final List<String> categories,
      required final int searchType,
      final List<AppUser>? users,
      final List<Book>? books,
      final List<ReImagined>? reImagined,
      final String? errorMessage}) = _$SearchStateImpl;

  @override
  SearchStatus get status;
  @override
  List<String> get categories;
  @override
  int get searchType;
  @override
  List<AppUser>? get users;
  @override
  List<Book>? get books;
  @override
  List<ReImagined>? get reImagined;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
