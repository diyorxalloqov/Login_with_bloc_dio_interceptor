part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(ActionStatus.pure) ActionStatus status,
  }) = _LoginState;
}
