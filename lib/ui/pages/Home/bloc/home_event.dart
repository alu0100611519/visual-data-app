import 'dart:async';
import 'dart:developer' as developer;


import 'package:meta/meta.dart';

import 'home_bloc.dart';
import 'home_state.dart';

@immutable
abstract class HomeEvent {
  Stream<HomeState> applyAsync(
      {HomeState currentState, HomeBloc bloc});
}

class UnHomeEvent extends HomeEvent {
  @override
  Stream<HomeState> applyAsync({HomeState? currentState, HomeBloc? bloc}) async* {
    yield UnHomeState();
  }
}

class LoadHomeEvent extends HomeEvent {

  @override
  Stream<HomeState> applyAsync(
      {HomeState? currentState, HomeBloc? bloc}) async* {
    try {
      yield UnHomeState();//shimmer. distinto al unInitialize.
      await Future.delayed(const Duration(seconds: 4));
      yield InHomeState('Hello world'); // caso de uso con
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadHomeEvent', error: _, stackTrace: stackTrace);
      yield ErrorHomeState( _.toString());
    }
  }
}
