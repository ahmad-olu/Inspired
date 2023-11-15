// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_update_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordUpdateState {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  PasswordUpdateStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordUpdateStateCopyWith<PasswordUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateStateCopyWith<$Res> {
  factory $PasswordUpdateStateCopyWith(
          PasswordUpdateState value, $Res Function(PasswordUpdateState) then) =
      _$PasswordUpdateStateCopyWithImpl<$Res, PasswordUpdateState>;
  @useResult
  $Res call(
      {String oldPassword,
      String newPassword,
      PasswordUpdateStatus status,
      String? errorMessage});
}

/// @nodoc
class _$PasswordUpdateStateCopyWithImpl<$Res, $Val extends PasswordUpdateState>
    implements $PasswordUpdateStateCopyWith<$Res> {
  _$PasswordUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PasswordUpdateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordUpdateStateImplCopyWith<$Res>
    implements $PasswordUpdateStateCopyWith<$Res> {
  factory _$$PasswordUpdateStateImplCopyWith(_$PasswordUpdateStateImpl value,
          $Res Function(_$PasswordUpdateStateImpl) then) =
      __$$PasswordUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String oldPassword,
      String newPassword,
      PasswordUpdateStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$PasswordUpdateStateImplCopyWithImpl<$Res>
    extends _$PasswordUpdateStateCopyWithImpl<$Res, _$PasswordUpdateStateImpl>
    implements _$$PasswordUpdateStateImplCopyWith<$Res> {
  __$$PasswordUpdateStateImplCopyWithImpl(_$PasswordUpdateStateImpl _value,
      $Res Function(_$PasswordUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PasswordUpdateStateImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PasswordUpdateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PasswordUpdateStateImpl implements _PasswordUpdateState {
  const _$PasswordUpdateStateImpl(
      {required this.oldPassword,
      required this.newPassword,
      required this.status,
      this.errorMessage});

  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final PasswordUpdateStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PasswordUpdateState(oldPassword: $oldPassword, newPassword: $newPassword, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateStateImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, newPassword, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateStateImplCopyWith<_$PasswordUpdateStateImpl> get copyWith =>
      __$$PasswordUpdateStateImplCopyWithImpl<_$PasswordUpdateStateImpl>(
          this, _$identity);
}

abstract class _PasswordUpdateState implements PasswordUpdateState {
  const factory _PasswordUpdateState(
      {required final String oldPassword,
      required final String newPassword,
      required final PasswordUpdateStatus status,
      final String? errorMessage}) = _$PasswordUpdateStateImpl;

  @override
  String get oldPassword;
  @override
  String get newPassword;
  @override
  PasswordUpdateStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PasswordUpdateStateImplCopyWith<_$PasswordUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
