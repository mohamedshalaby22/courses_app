import 'dart:async';
import 'connectivity_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(ConnectivityState(isOnline: true)) {
    _monitorConnectivity();
  }
  // instance of connectivity
  final Connectivity _connectivity = Connectivity();

  // stream of connectivity changes
  Stream<List<ConnectivityResult>> get connectivityStream =>
      _connectivity.onConnectivityChanged;

  // subscription to the connectivity stream
  StreamSubscription? _subscription;

  // handle connectivity changes globally
  void _monitorConnectivity() {
    _subscription = connectivityStream.listen((
      List<ConnectivityResult> result,
    ) {
      final isOnline = result.any((r) => r != ConnectivityResult.none);
      emit(ConnectivityState(isOnline: isOnline));
    });
  }

  // cancel the subscription when the cubit is closed
  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
