import 'package:equatable/equatable.dart';
import 'package:visual_data_app/domain/entities/presentation.dart';

abstract class HomeState extends Equatable {
  final List<Presentation> listPresentation;
  const HomeState(this.listPresentation);

  @override
  List<Object> get props => [];
}

class InitPresentationState extends HomeState {
  InitPresentationState() : super([]);

  @override
  String toString() => 'Init State';
}

/// UnInitialized
class LoadingPresentationState extends HomeState {

  LoadingPresentationState() : super([]);

  @override
  String toString() => 'UnHomeState';
}

/// Initialized
class LoadedPresentationState extends HomeState {

  const LoadedPresentationState(list) : super(list);

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

