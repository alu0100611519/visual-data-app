import 'dart:async';
import 'dart:developer' as developer;


import 'package:meta/meta.dart';
import 'package:visual_data_app/domain/entities/presentation.dart';

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
    yield LoadingPresentationState();
  }
}

class LoadHomeEvent extends HomeEvent { //aqui va el tema de los eventos.

  @override
  Stream<HomeState> applyAsync(
      {HomeState? currentState, HomeBloc? bloc}) async* {
    try {
      yield LoadingPresentationState();//shimmer. distinto al unInitialize.
      await Future.delayed(const Duration(seconds: 4));
      yield LoadedPresentationState(lista); // caso de uso con
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadHomeEvent', error: _, stackTrace: stackTrace);
      yield ErrorHomeState( _.toString());
    }
  }
}


// mock data presentation.
List<Presentation> lista = [
  Presentation(title: "Ventas Semanales", description: "ventas semanales de ropa", idPesentation: 1),
  Presentation(title: "Ventas Anuales", description: "Ventas Anuales de ropa", idPesentation: 2),
  Presentation(title: "Probabilidad cancer de mama", description: "estudio estadistico basado en el riesgo de cancer de mama",
  idPesentation: 3),
  Presentation(title: "Subenciones a los organismos publicos Pais vasco", description: "donaciones y subvenciones...", idPesentation: 4),
  Presentation(title: "Estos son datos mockeados", description: "recuerda que hay que generar el tipo de datos necesarios.", idPesentation: 5),
];
