import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'data_connection_bloc.freezed.dart';
part 'data_connection_event.dart';
part 'data_connection_state.dart';

class DataConnectionBloc extends Bloc<DataConnectionEvent, DataConnectionState> {
  late final StreamSubscription<InternetStatus> _connectivitySubscription;
  late final AppLifecycleListener _appLifecycleListener;
  final InternetConnection _internetConnection;
  DataConnectionBloc(this._internetConnection) : super(DataConnectionState.initial()) {
    on<_ConnectionChanged>(_onConnectionChanged);

    _connectivitySubscription = _internetConnection.onStatusChange.listen(
      (event) {
        add(_ConnectionChanged(status: event));
      },
    );

    _appLifecycleListener = AppLifecycleListener(
      onResume: () => _connectivitySubscription.resume(),
      onPause: () => _connectivitySubscription.pause(),
      onHide: () => _connectivitySubscription.pause(),
    );
  }

  Future<void> _onConnectionChanged(_ConnectionChanged event, Emitter<DataConnectionState> emit) async {
    emit(state.copyWith(status: event.status));
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    _appLifecycleListener.dispose();
    return super.close();
  }
}
