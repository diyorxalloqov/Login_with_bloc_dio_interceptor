import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login_with_bloc_/utils/action_status.dart';

part 'connectivity_event.dart';

part 'connectivity_state.dart';

part 'connectivity_bloc.freezed.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc() : super(const ConnectivityState()) {
    Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi ||
          result == ConnectivityResult.ethernet) {
        final result = await Dio().get('https://www.google.com');

        print(result.statusCode.toString()+' googleStatus');
        if (result.statusCode! >= 200 && result.statusCode! < 300) {
          print('connected12TrueNetwork');
          add(const ConnectivityEvent.changeStatus(isConnected: true));
        } else {
          add(const ConnectivityEvent.changeStatus(isConnected: false));
          print('connected12TrueNoNetwork');
        }
      } else {
        print('connected12False');
        add(const ConnectivityEvent.changeStatus(isConnected: false));
      }
    });

    on<_ChangeStatus>((event, emit) {
      emit(state.copyWith(isConnected: event.isConnected));
    });
  }
}
