import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.freezed.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increase() = _CounterEventIncrease;
  const factory CounterEvent.decrease() = _CounterEventDecrease;
}
