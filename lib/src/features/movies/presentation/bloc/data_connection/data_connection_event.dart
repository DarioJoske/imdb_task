part of 'data_connection_bloc.dart';

@freezed
class DataConnectionEvent with _$DataConnectionEvent {
  const factory DataConnectionEvent.connectionChanged({required InternetStatus status}) = _ConnectionChanged;
}
