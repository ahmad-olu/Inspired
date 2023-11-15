// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserData,
    required TResult Function() followUser,
    required TResult Function() emptyPage,
    required TResult Function() initCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getUserData,
    TResult? Function()? followUser,
    TResult? Function()? emptyPage,
    TResult? Function()? initCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserData,
    TResult Function()? followUser,
    TResult Function()? emptyPage,
    TResult Function()? initCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_EmptyPage value) emptyPage,
    required TResult Function(_InitCurrentUser value) initCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_FollowUser value)? followUser,
    TResult? Function(_EmptyPage value)? emptyPage,
    TResult? Function(_InitCurrentUser value)? initCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_EmptyPage value)? emptyPage,
    TResult Function(_InitCurrentUser value)? initCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserDataImplCopyWith<$Res> {
  factory _$$GetUserDataImplCopyWith(
          _$GetUserDataImpl value, $Res Function(_$GetUserDataImpl) then) =
      __$$GetUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetUserDataImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserDataImpl>
    implements _$$GetUserDataImplCopyWith<$Res> {
  __$$GetUserDataImplCopyWithImpl(
      _$GetUserDataImpl _value, $Res Function(_$GetUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$GetUserDataImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserDataImpl implements _GetUserData {
  const _$GetUserDataImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'ProfileEvent.getUserData(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDataImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDataImplCopyWith<_$GetUserDataImpl> get copyWith =>
      __$$GetUserDataImplCopyWithImpl<_$GetUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserData,
    required TResult Function() followUser,
    required TResult Function() emptyPage,
    required TResult Function() initCurrentUser,
  }) {
    return getUserData(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getUserData,
    TResult? Function()? followUser,
    TResult? Function()? emptyPage,
    TResult? Function()? initCurrentUser,
  }) {
    return getUserData?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserData,
    TResult Function()? followUser,
    TResult Function()? emptyPage,
    TResult Function()? initCurrentUser,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_EmptyPage value) emptyPage,
    required TResult Function(_InitCurrentUser value) initCurrentUser,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_FollowUser value)? followUser,
    TResult? Function(_EmptyPage value)? emptyPage,
    TResult? Function(_InitCurrentUser value)? initCurrentUser,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_EmptyPage value)? emptyPage,
    TResult Function(_InitCurrentUser value)? initCurrentUser,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class _GetUserData implements ProfileEvent {
  const factory _GetUserData({required final String uid}) = _$GetUserDataImpl;

  String get uid;
  @JsonKey(ignore: true)
  _$$GetUserDataImplCopyWith<_$GetUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FollowUserImplCopyWith<$Res> {
  factory _$$FollowUserImplCopyWith(
          _$FollowUserImpl value, $Res Function(_$FollowUserImpl) then) =
      __$$FollowUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FollowUserImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FollowUserImpl>
    implements _$$FollowUserImplCopyWith<$Res> {
  __$$FollowUserImplCopyWithImpl(
      _$FollowUserImpl _value, $Res Function(_$FollowUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FollowUserImpl implements _FollowUser {
  const _$FollowUserImpl();

  @override
  String toString() {
    return 'ProfileEvent.followUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FollowUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserData,
    required TResult Function() followUser,
    required TResult Function() emptyPage,
    required TResult Function() initCurrentUser,
  }) {
    return followUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getUserData,
    TResult? Function()? followUser,
    TResult? Function()? emptyPage,
    TResult? Function()? initCurrentUser,
  }) {
    return followUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserData,
    TResult Function()? followUser,
    TResult Function()? emptyPage,
    TResult Function()? initCurrentUser,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_EmptyPage value) emptyPage,
    required TResult Function(_InitCurrentUser value) initCurrentUser,
  }) {
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_FollowUser value)? followUser,
    TResult? Function(_EmptyPage value)? emptyPage,
    TResult? Function(_InitCurrentUser value)? initCurrentUser,
  }) {
    return followUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_EmptyPage value)? emptyPage,
    TResult Function(_InitCurrentUser value)? initCurrentUser,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(this);
    }
    return orElse();
  }
}

abstract class _FollowUser implements ProfileEvent {
  const factory _FollowUser() = _$FollowUserImpl;
}

/// @nodoc
abstract class _$$EmptyPageImplCopyWith<$Res> {
  factory _$$EmptyPageImplCopyWith(
          _$EmptyPageImpl value, $Res Function(_$EmptyPageImpl) then) =
      __$$EmptyPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyPageImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$EmptyPageImpl>
    implements _$$EmptyPageImplCopyWith<$Res> {
  __$$EmptyPageImplCopyWithImpl(
      _$EmptyPageImpl _value, $Res Function(_$EmptyPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyPageImpl implements _EmptyPage {
  const _$EmptyPageImpl();

  @override
  String toString() {
    return 'ProfileEvent.emptyPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserData,
    required TResult Function() followUser,
    required TResult Function() emptyPage,
    required TResult Function() initCurrentUser,
  }) {
    return emptyPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getUserData,
    TResult? Function()? followUser,
    TResult? Function()? emptyPage,
    TResult? Function()? initCurrentUser,
  }) {
    return emptyPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserData,
    TResult Function()? followUser,
    TResult Function()? emptyPage,
    TResult Function()? initCurrentUser,
    required TResult orElse(),
  }) {
    if (emptyPage != null) {
      return emptyPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_EmptyPage value) emptyPage,
    required TResult Function(_InitCurrentUser value) initCurrentUser,
  }) {
    return emptyPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_FollowUser value)? followUser,
    TResult? Function(_EmptyPage value)? emptyPage,
    TResult? Function(_InitCurrentUser value)? initCurrentUser,
  }) {
    return emptyPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_EmptyPage value)? emptyPage,
    TResult Function(_InitCurrentUser value)? initCurrentUser,
    required TResult orElse(),
  }) {
    if (emptyPage != null) {
      return emptyPage(this);
    }
    return orElse();
  }
}

abstract class _EmptyPage implements ProfileEvent {
  const factory _EmptyPage() = _$EmptyPageImpl;
}

/// @nodoc
abstract class _$$InitCurrentUserImplCopyWith<$Res> {
  factory _$$InitCurrentUserImplCopyWith(_$InitCurrentUserImpl value,
          $Res Function(_$InitCurrentUserImpl) then) =
      __$$InitCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCurrentUserImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$InitCurrentUserImpl>
    implements _$$InitCurrentUserImplCopyWith<$Res> {
  __$$InitCurrentUserImplCopyWithImpl(
      _$InitCurrentUserImpl _value, $Res Function(_$InitCurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitCurrentUserImpl implements _InitCurrentUser {
  const _$InitCurrentUserImpl();

  @override
  String toString() {
    return 'ProfileEvent.initCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) getUserData,
    required TResult Function() followUser,
    required TResult Function() emptyPage,
    required TResult Function() initCurrentUser,
  }) {
    return initCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? getUserData,
    TResult? Function()? followUser,
    TResult? Function()? emptyPage,
    TResult? Function()? initCurrentUser,
  }) {
    return initCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? getUserData,
    TResult Function()? followUser,
    TResult Function()? emptyPage,
    TResult Function()? initCurrentUser,
    required TResult orElse(),
  }) {
    if (initCurrentUser != null) {
      return initCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_EmptyPage value) emptyPage,
    required TResult Function(_InitCurrentUser value) initCurrentUser,
  }) {
    return initCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_FollowUser value)? followUser,
    TResult? Function(_EmptyPage value)? emptyPage,
    TResult? Function(_InitCurrentUser value)? initCurrentUser,
  }) {
    return initCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_EmptyPage value)? emptyPage,
    TResult Function(_InitCurrentUser value)? initCurrentUser,
    required TResult orElse(),
  }) {
    if (initCurrentUser != null) {
      return initCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _InitCurrentUser implements ProfileEvent {
  const factory _InitCurrentUser() = _$InitCurrentUserImpl;
}

/// @nodoc
mixin _$ProfileState {
  AppUser get user => throw _privateConstructorUsedError;
  AppUser get currentLoggedInUser => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;
  List<ReImagined> get reImagined => throw _privateConstructorUsedError;
  ProfileStatus get status => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {AppUser user,
      AppUser currentLoggedInUser,
      List<Book> books,
      List<ReImagined> reImagined,
      ProfileStatus status,
      bool isCurrentUser,
      bool isFollowing,
      String? errorMessage});

  $AppUserCopyWith<$Res> get user;
  $AppUserCopyWith<$Res> get currentLoggedInUser;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? currentLoggedInUser = null,
    Object? books = null,
    Object? reImagined = null,
    Object? status = null,
    Object? isCurrentUser = null,
    Object? isFollowing = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      currentLoggedInUser: null == currentLoggedInUser
          ? _value.currentLoggedInUser
          : currentLoggedInUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      reImagined: null == reImagined
          ? _value.reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get currentLoggedInUser {
    return $AppUserCopyWith<$Res>(_value.currentLoggedInUser, (value) {
      return _then(_value.copyWith(currentLoggedInUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser user,
      AppUser currentLoggedInUser,
      List<Book> books,
      List<ReImagined> reImagined,
      ProfileStatus status,
      bool isCurrentUser,
      bool isFollowing,
      String? errorMessage});

  @override
  $AppUserCopyWith<$Res> get user;
  @override
  $AppUserCopyWith<$Res> get currentLoggedInUser;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? currentLoggedInUser = null,
    Object? books = null,
    Object? reImagined = null,
    Object? status = null,
    Object? isCurrentUser = null,
    Object? isFollowing = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      currentLoggedInUser: null == currentLoggedInUser
          ? _value.currentLoggedInUser
          : currentLoggedInUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      reImagined: null == reImagined
          ? _value._reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {required this.user,
      required this.currentLoggedInUser,
      required final List<Book> books,
      required final List<ReImagined> reImagined,
      required this.status,
      required this.isCurrentUser,
      required this.isFollowing,
      this.errorMessage})
      : _books = books,
        _reImagined = reImagined;

  @override
  final AppUser user;
  @override
  final AppUser currentLoggedInUser;
  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final List<ReImagined> _reImagined;
  @override
  List<ReImagined> get reImagined {
    if (_reImagined is EqualUnmodifiableListView) return _reImagined;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reImagined);
  }

  @override
  final ProfileStatus status;
  @override
  final bool isCurrentUser;
  @override
  final bool isFollowing;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ProfileState(user: $user, currentLoggedInUser: $currentLoggedInUser, books: $books, reImagined: $reImagined, status: $status, isCurrentUser: $isCurrentUser, isFollowing: $isFollowing, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.currentLoggedInUser, currentLoggedInUser) ||
                other.currentLoggedInUser == currentLoggedInUser) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality()
                .equals(other._reImagined, _reImagined) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                other.isCurrentUser == isCurrentUser) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      currentLoggedInUser,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_reImagined),
      status,
      isCurrentUser,
      isFollowing,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final AppUser user,
      required final AppUser currentLoggedInUser,
      required final List<Book> books,
      required final List<ReImagined> reImagined,
      required final ProfileStatus status,
      required final bool isCurrentUser,
      required final bool isFollowing,
      final String? errorMessage}) = _$ProfileStateImpl;

  @override
  AppUser get user;
  @override
  AppUser get currentLoggedInUser;
  @override
  List<Book> get books;
  @override
  List<ReImagined> get reImagined;
  @override
  ProfileStatus get status;
  @override
  bool get isCurrentUser;
  @override
  bool get isFollowing;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
