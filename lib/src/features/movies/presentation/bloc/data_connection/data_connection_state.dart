part of 'data_connection_bloc.dart';

@freezed
class DataConnectionState with _$DataConnectionState {
  const factory DataConnectionState({
    required InternetStatus status,
  }) = _DataConnectionState;

  factory DataConnectionState.initial() => const DataConnectionState(
        status: InternetStatus.connected,
      );
}
