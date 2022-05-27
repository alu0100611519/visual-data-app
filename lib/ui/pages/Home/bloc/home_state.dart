import 'package:equatable/equatable.dart';
import 'package:visual_data_app/domain/model/visual_model.dart';


abstract class HomeState extends Equatable {
  final List<VisualModel> listPresentation;
  const HomeState(this.listPresentation);

  @override
  List<Object> get props => [];
}

class InitVisualModelState extends HomeState {
  InitVisualModelState() : super([]);

  @override
  String toString() => 'Init State';
}

/// UnInitialized
class LoadingVisualModelState extends HomeState {

  LoadingVisualModelState() : super([]);

  @override
  String toString() => 'UnHomeState';
}

/// Initialized
class LoadedVisualModelState extends HomeState {

  const LoadedVisualModelState(list) : super(list);

  @override
  String toString() => 'InHomeState ';

  @override
  List<Object> get props => [listPresentation];
}

class ErrorHomeState extends HomeState {

  ErrorHomeState(this.errorMessage) : super([]);

  final String errorMessage;

  @override
  String toString() => 'ErrorHomeState';

  @override
  List<Object> get props => [errorMessage];
}

