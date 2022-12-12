import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int count,
    @Default(false) bool isLoading,
  }) = $$CounterState;

  factory CounterState.initial() => const CounterState(count: 0);
}
