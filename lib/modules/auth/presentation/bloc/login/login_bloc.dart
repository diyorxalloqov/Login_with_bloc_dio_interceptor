import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_with_bloc_/modules/auth/domain/usecase/login_phone.dart';
import 'package:login_with_bloc_/utils/action_status.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginPhoneUseCase login;

  LoginBloc(this.login) : super(const LoginState()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.inProcess));
      final result = await login(
          LoginParams(password: event.password, phone: event.phone));

      // if (result.isRight) {
      //   event.onSucces();
      //   emit(state.copyWith(status: ActionStatus.isSuccess));
      // } else {
      //   emit(state.copyWith(status: ActionStatus.isFailure));
      // }

      result.fold(
        (r) {
          event.onSucces();
          emit(state.copyWith(status: ActionStatus.isSuccess));
        },
        (l) {
          emit(state.copyWith(status: ActionStatus.isFailure));
        },
      );
    });
  }
}
