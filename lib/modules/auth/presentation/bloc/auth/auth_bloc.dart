import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_with_bloc_/modules/auth/data/model/user_model.dart';
import 'package:login_with_bloc_/modules/auth/domain/usecase/get_user.dart';
import 'package:login_with_bloc_/utils/status.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // final GetUserUseCase getUser;

  // AuthBloc(this.getUser) : super(const AuthState()) {
  //   on<_CheckAuth>((event, emit) async {
  //     final result = await getUser('');

  //     // if (result.isRight) {
  //     //   emit(state.copyWith(authStatus: AuthenticationStatus.authenticated));
  //     // } else {
  //     //    emit(state.copyWith(authStatus: AuthenticationStatus.unauthenticated));
  //     // }

  //     result.fold(
  //         (l) => emit(
  //             state.copyWith(authStatus: AuthenticationStatus.unauthenticated)),
  //         (r) => emit(
  //             state.copyWith(authStatus: AuthenticationStatus.authenticated)));
  //   });
  // }

  final GetUserUseCase getUser;

  AuthBloc(this.getUser) : super(const AuthState()) {
    on<_CheckAuth>((event, emit) async {
      final result1 = await (Connectivity().checkConnectivity());

      if (result1 == ConnectivityResult.mobile ||
          result1 == ConnectivityResult.wifi ||
          result1 == ConnectivityResult.ethernet) {
        try {
          final resultData = await Dio().get('https://www.google.com');

          print(resultData.statusCode.toString() + ' googleStatus');
          if (resultData.statusCode! >= 200 && resultData.statusCode! < 300) {
            print('connected12TrueNetwork');
            final result = await getUser('');

            // if (result.isRight) {
            //   emit(state.copyWith(
            //       authStatus: AuthenticationStatus.authenticated));
            // } else {
            //   emit(state.copyWith(
            //       authStatus: AuthenticationStatus.unauthenticated));
            // }
            result.fold(
                (l) => emit(state.copyWith(
                    authStatus: AuthenticationStatus.unauthenticated)),
                (r) => state.copyWith(
                    authStatus: AuthenticationStatus.authenticated));
          } else {
            print('connected12TrueNoNetwork');
            emit(state.copyWith(
                authStatus: AuthenticationStatus.noNetworkConnection));
          }
        } catch (e) {
          emit(state.copyWith(
              authStatus: AuthenticationStatus.noNetworkConnection));
        }
      } else {
        emit(state.copyWith(
            authStatus: AuthenticationStatus.noNetworkConnection));
        print('connected12False');
      }
    });
  }
}
