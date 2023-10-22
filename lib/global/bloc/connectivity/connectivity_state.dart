part of 'connectivity_bloc.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    @Default(false) bool isConnected,
    @Default(ActionStatus.pure) ActionStatus status,
  }) = _ConnectivityState;
}

