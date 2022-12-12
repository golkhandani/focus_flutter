// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
    required TResult Function() decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
    TResult? Function()? decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    TResult Function()? decrease,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterEventIncrease value) increase,
    required TResult Function(_CounterEventDecrease value) decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterEventIncrease value)? increase,
    TResult? Function(_CounterEventDecrease value)? decrease,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterEventIncrease value)? increase,
    TResult Function(_CounterEventDecrease value)? decrease,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CounterEventIncreaseCopyWith<$Res> {
  factory _$$_CounterEventIncreaseCopyWith(_$_CounterEventIncrease value,
          $Res Function(_$_CounterEventIncrease) then) =
      __$$_CounterEventIncreaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CounterEventIncreaseCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_CounterEventIncrease>
    implements _$$_CounterEventIncreaseCopyWith<$Res> {
  __$$_CounterEventIncreaseCopyWithImpl(_$_CounterEventIncrease _value,
      $Res Function(_$_CounterEventIncrease) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CounterEventIncrease implements _CounterEventIncrease {
  const _$_CounterEventIncrease();

  @override
  String toString() {
    return 'CounterEvent.increase()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CounterEventIncrease);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
    required TResult Function() decrease,
  }) {
    return increase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
    TResult? Function()? decrease,
  }) {
    return increase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    TResult Function()? decrease,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterEventIncrease value) increase,
    required TResult Function(_CounterEventDecrease value) decrease,
  }) {
    return increase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterEventIncrease value)? increase,
    TResult? Function(_CounterEventDecrease value)? decrease,
  }) {
    return increase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterEventIncrease value)? increase,
    TResult Function(_CounterEventDecrease value)? decrease,
    required TResult orElse(),
  }) {
    if (increase != null) {
      return increase(this);
    }
    return orElse();
  }
}

abstract class _CounterEventIncrease implements CounterEvent {
  const factory _CounterEventIncrease() = _$_CounterEventIncrease;
}

/// @nodoc
abstract class _$$_CounterEventDecreaseCopyWith<$Res> {
  factory _$$_CounterEventDecreaseCopyWith(_$_CounterEventDecrease value,
          $Res Function(_$_CounterEventDecrease) then) =
      __$$_CounterEventDecreaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CounterEventDecreaseCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_CounterEventDecrease>
    implements _$$_CounterEventDecreaseCopyWith<$Res> {
  __$$_CounterEventDecreaseCopyWithImpl(_$_CounterEventDecrease _value,
      $Res Function(_$_CounterEventDecrease) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CounterEventDecrease implements _CounterEventDecrease {
  const _$_CounterEventDecrease();

  @override
  String toString() {
    return 'CounterEvent.decrease()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CounterEventDecrease);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increase,
    required TResult Function() decrease,
  }) {
    return decrease();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? increase,
    TResult? Function()? decrease,
  }) {
    return decrease?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increase,
    TResult Function()? decrease,
    required TResult orElse(),
  }) {
    if (decrease != null) {
      return decrease();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CounterEventIncrease value) increase,
    required TResult Function(_CounterEventDecrease value) decrease,
  }) {
    return decrease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CounterEventIncrease value)? increase,
    TResult? Function(_CounterEventDecrease value)? decrease,
  }) {
    return decrease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CounterEventIncrease value)? increase,
    TResult Function(_CounterEventDecrease value)? decrease,
    required TResult orElse(),
  }) {
    if (decrease != null) {
      return decrease(this);
    }
    return orElse();
  }
}

abstract class _CounterEventDecrease implements CounterEvent {
  const factory _CounterEventDecrease() = _$_CounterEventDecrease;
}
