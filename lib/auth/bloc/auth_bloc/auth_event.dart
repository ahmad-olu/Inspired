part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appLogoutRequested() = _AppLogoutRequested;
  const factory AuthEvent.appUserChanged() = _AppUserChanged;
}
