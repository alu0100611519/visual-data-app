
import 'package:bloc/bloc.dart';

part 'counter_state.dart';

//abstrac class of event of the pattern bloc.
abstract class CounterEvent  {}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}

class BlocCounter extends Bloc<CounterEvent, CounterState> {
  BlocCounter() : super(CounterState(counterValue: 0)){
    on<CounterIncrement> ((event, emit) => emit(CounterState(counterValue: state.counterValue +1)));
    on<CounterDecrement> ((event, emit) => emit(CounterState(counterValue: state.counterValue -1)));
  }
}