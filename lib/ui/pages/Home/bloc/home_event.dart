import 'dart:async';
import 'dart:developer' as developer;


import 'package:meta/meta.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';

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
    yield LoadingVisualModelState();
  }
}

class LoadHomeEvent extends HomeEvent { //aqui va el tema de los eventos.

  @override
  Stream<HomeState> applyAsync(
      {HomeState? currentState, HomeBloc? bloc}) async* {
    try {
      yield LoadingVisualModelState();//shimmer. distinto al unInitialize.
      await Future.delayed(const Duration(seconds: 4));
      yield LoadedVisualModelState(lista); // caso de uso con
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadHomeEvent', error: _, stackTrace: stackTrace);
      yield ErrorHomeState( _.toString());
    }
  }
}


// mock data presentation.
List<VisualModel> lista = [
  VisualModel(id: 0,name: "item 1",description: "descripcion 1", fields: []),
  VisualModel(id: 1,name: "item 2",description: "descripcion 2", fields: []),
  VisualModel(id: 2,name: "item 3",description: "descripcion 3", fields: []),
  VisualModel(id: 3,name: "item 4",description: "descripcion 4", fields: []),
];
