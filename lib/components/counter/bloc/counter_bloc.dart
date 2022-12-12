import 'package:app/components/counter/bloc/counter_event.dart';
import 'package:app/components/counter/bloc/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    // note if you don't mention Future<void> it wont detect that should
    // act async on function implementations
    on<CounterEvent>(
      (_, emit) => _.when<Future<void>>(
        increase: () => _increase(emit),
        decrease: () => _decrease(emit),
      ),
    );
  }
  _increase(emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(state.copyWith(count: state.count + 1));
    emit(state.copyWith(isLoading: false));
  }

  _decrease(emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(state.copyWith(count: state.count - 1));
    emit(state.copyWith(isLoading: false));
  }
}
