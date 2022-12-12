import 'package:app/counter/bloc/counter_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerFactory(() => CounterBloc());
}