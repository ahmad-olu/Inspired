// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_update_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailUpdateState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  EmailUpdateStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailUpdateStateCopyWith<EmailUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailUpdateStateCopyWith<$Res> {
  factory $EmailUpdateStateCopyWith(
          EmailUpdateState value, $Res Function(EmailUpdateState) then) =
      _$EmailUpdateStateCopyWithImpl<$Res, EmailUpdateState>;
  @useResult
  $Res call(
      {String email,
      String password,
      EmailUpdateStatus status,
      String? errorMessage});
}

/// @nodoc
class _$EmailUpdateStateCopyWithImpl<$Res, $Val extends EmailUpdateState>
    implements $EmailUpdateStateCopyWith<$Res> {
  _$EmailUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmailUpdateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailUpdateStateImplCopyWith<$Res>
    implements $EmailUpdateStateCopyWith<$Res> {
  factory _$$EmailUpdateStateImplCopyWith(_$EmailUpdateStateImpl value,
          $Res Function(_$EmailUpdateStateImpl) then) =
      __$$EmailUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      EmailUpdateStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$EmailUpdateStateImplCopyWithImpl<$Res>
    extends _$EmailUpdateStateCopyWithImpl<$Res, _$EmailUpdateStateImpl>
    implements _$$EmailUpdateStateImplCopyWith<$Res> {
  __$$EmailUpdateStateImplCopyWithImpl(_$EmailUpdateStateImpl _value,
      $Res Function(_$EmailUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EmailUpdateStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmailUpdateStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailUpdateStateImpl implements _EmailUpdateState {
  const _$EmailUpdateStateImpl(
      {required this.email,
      required this.password,
      required this.status,
      this.errorMessage});

  @override
  final String email;
  @override
  final String password;
  @override
  final EmailUpdateStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EmailUpdateState(email: $email, password: $password, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailUpdateStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailUpdateStateImplCopyWith<_$EmailUpdateStateImpl> get copyWith =>
      __$$EmailUpdateStateImplCopyWithImpl<_$EmailUpdateStateImpl>(
          this, _$identity);
}

abstract class _EmailUpdateState implements EmailUpdateState {
  const factory _EmailUpdateState(
      {required final String email,
      required final String password,
      required final EmailUpdateStatus status,
      final String? errorMessage}) = _$EmailUpdateStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  EmailUpdateStatus get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EmailUpdateStateImplCopyWith<_$EmailUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
