part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.checkConnection() = _CheckConnection;
  const factory ConnectivityEvent.changeStatus({
    required bool isConnected
}) = _ChangeStatus;
}

