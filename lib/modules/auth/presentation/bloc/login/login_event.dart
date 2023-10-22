part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({

    required VoidCallback onSucces,
    required String phone,
    required String password,
  }) = _Login;


}
