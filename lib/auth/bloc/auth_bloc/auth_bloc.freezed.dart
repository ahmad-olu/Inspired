// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLogoutRequested,
    required TResult Function() appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLogoutRequested,
    TResult? Function()? appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLogoutRequested,
    TResult Function()? appUserChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppUserChanged value) appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult? Function(_AppUserChanged value)? appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLogoutRequestedImplCopyWith<$Res> {
  factory _$$AppLogoutRequestedImplCopyWith(_$AppLogoutRequestedImpl value,
          $Res Function(_$AppLogoutRequestedImpl) then) =
      __$$AppLogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AppLogoutRequestedImpl>
    implements _$$AppLogoutRequestedImplCopyWith<$Res> {
  __$$AppLogoutRequestedImplCopyWithImpl(_$AppLogoutRequestedImpl _value,
      $Res Function(_$AppLogoutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLogoutRequestedImpl implements _AppLogoutRequested {
  const _$AppLogoutRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.appLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLogoutRequested,
    required TResult Function() appUserChanged,
  }) {
    return appLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLogoutRequested,
    TResult? Function()? appUserChanged,
  }) {
    return appLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLogoutRequested,
    TResult Function()? appUserChanged,
    required TResult orElse(),
  }) {
    if (appLogoutRequested != null) {
      return appLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppUserChanged value) appUserChanged,
  }) {
    return appLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult? Function(_AppUserChanged value)? appUserChanged,
  }) {
    return appLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appLogoutRequested != null) {
      return appLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class _AppLogoutRequested implements AuthEvent {
  const factory _AppLogoutRequested() = _$AppLogoutRequestedImpl;
}

/// @nodoc
abstract class _$$AppUserChangedImplCopyWith<$Res> {
  factory _$$AppUserChangedImplCopyWith(_$AppUserChangedImpl value,
          $Res Function(_$AppUserChangedImpl) then) =
      __$$AppUserChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppUserChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AppUserChangedImpl>
    implements _$$AppUserChangedImplCopyWith<$Res> {
  __$$AppUserChangedImplCopyWithImpl(
      _$AppUserChangedImpl _value, $Res Function(_$AppUserChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppUserChangedImpl implements _AppUserChanged {
  const _$AppUserChangedImpl();

  @override
  String toString() {
    return 'AuthEvent.appUserChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppUserChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLogoutRequested,
    required TResult Function() appUserChanged,
  }) {
    return appUserChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLogoutRequested,
    TResult? Function()? appUserChanged,
  }) {
    return appUserChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLogoutRequested,
    TResult Function()? appUserChanged,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppLogoutRequested value) appLogoutRequested,
    required TResult Function(_AppUserChanged value) appUserChanged,
  }) {
    return appUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult? Function(_AppUserChanged value)? appUserChanged,
  }) {
    return appUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppLogoutRequested value)? appLogoutRequested,
    TResult Function(_AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(this);
    }
    return orElse();
  }
}

abstract class _AppUserChanged implements AuthEvent {
  const factory _AppUserChanged() = _$AppUserChangedImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus status, User? user});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatus status, User? user});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({required this.status, this.user});

  @override
  final AuthStatus status;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final AuthStatus status, final User? user}) = _$AuthStateImpl;

  @override
  AuthStatus get status;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
