// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_temperatures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherTemperatures _$WeatherTemperaturesFromJson(Map<String, dynamic> json) {
  return _WeatherTemperatures.fromJson(json);
}

/// @nodoc
class _$WeatherTemperaturesTearOff {
  const _$WeatherTemperaturesTearOff();

  _WeatherTemperatures call(
      {required double day,
      required double min,
      required double max,
      required double night}) {
    return _WeatherTemperatures(
      day: day,
      min: min,
      max: max,
      night: night,
    );
  }

  WeatherTemperatures fromJson(Map<String, Object> json) {
    return WeatherTemperatures.fromJson(json);
  }
}

/// @nodoc
const $WeatherTemperatures = _$WeatherTemperaturesTearOff();

/// @nodoc
mixin _$WeatherTemperatures {
  double get day => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get night => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherTemperaturesCopyWith<WeatherTemperatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherTemperaturesCopyWith<$Res> {
  factory $WeatherTemperaturesCopyWith(
          WeatherTemperatures value, $Res Function(WeatherTemperatures) then) =
      _$WeatherTemperaturesCopyWithImpl<$Res>;
  $Res call({double day, double min, double max, double night});
}

/// @nodoc
class _$WeatherTemperaturesCopyWithImpl<$Res>
    implements $WeatherTemperaturesCopyWith<$Res> {
  _$WeatherTemperaturesCopyWithImpl(this._value, this._then);

  final WeatherTemperatures _value;
  // ignore: unused_field
  final $Res Function(WeatherTemperatures) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$WeatherTemperaturesCopyWith<$Res>
    implements $WeatherTemperaturesCopyWith<$Res> {
  factory _$WeatherTemperaturesCopyWith(_WeatherTemperatures value,
          $Res Function(_WeatherTemperatures) then) =
      __$WeatherTemperaturesCopyWithImpl<$Res>;
  @override
  $Res call({double day, double min, double max, double night});
}

/// @nodoc
class __$WeatherTemperaturesCopyWithImpl<$Res>
    extends _$WeatherTemperaturesCopyWithImpl<$Res>
    implements _$WeatherTemperaturesCopyWith<$Res> {
  __$WeatherTemperaturesCopyWithImpl(
      _WeatherTemperatures _value, $Res Function(_WeatherTemperatures) _then)
      : super(_value, (v) => _then(v as _WeatherTemperatures));

  @override
  _WeatherTemperatures get _value => super._value as _WeatherTemperatures;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
  }) {
    return _then(_WeatherTemperatures(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherTemperatures implements _WeatherTemperatures {
  _$_WeatherTemperatures(
      {required this.day,
      required this.min,
      required this.max,
      required this.night});

  factory _$_WeatherTemperatures.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherTemperaturesFromJson(json);

  @override
  final double day;
  @override
  final double min;
  @override
  final double max;
  @override
  final double night;

  @override
  String toString() {
    return 'WeatherTemperatures(day: $day, min: $min, max: $max, night: $night)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherTemperatures &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.night, night) ||
                const DeepCollectionEquality().equals(other.night, night)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(night);

  @JsonKey(ignore: true)
  @override
  _$WeatherTemperaturesCopyWith<_WeatherTemperatures> get copyWith =>
      __$WeatherTemperaturesCopyWithImpl<_WeatherTemperatures>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherTemperaturesToJson(this);
  }
}

abstract class _WeatherTemperatures implements WeatherTemperatures {
  factory _WeatherTemperatures(
      {required double day,
      required double min,
      required double max,
      required double night}) = _$_WeatherTemperatures;

  factory _WeatherTemperatures.fromJson(Map<String, dynamic> json) =
      _$_WeatherTemperatures.fromJson;

  @override
  double get day => throw _privateConstructorUsedError;
  @override
  double get min => throw _privateConstructorUsedError;
  @override
  double get max => throw _privateConstructorUsedError;
  @override
  double get night => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherTemperaturesCopyWith<_WeatherTemperatures> get copyWith =>
      throw _privateConstructorUsedError;
}
