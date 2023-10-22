part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;

  const factory AuthEvent.changeStatus(AuthenticationStatus status) =
      _ChangeStatus;
}

