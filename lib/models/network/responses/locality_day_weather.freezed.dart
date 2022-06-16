// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locality_day_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalityDayWeather _$LocalityDayWeatherFromJson(Map<String, dynamic> json) {
  return _LocalityDayWeather.fromJson(json);
}

/// @nodoc
class _$LocalityDayWeatherTearOff {
  const _$LocalityDayWeatherTearOff();

  _LocalityDayWeather call(
      {@JsonKey(name: 'dt') required int dateTime,
      @JsonKey(name: 'weather') required List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp') required WeatherTemperatures temperatures}) {
    return _LocalityDayWeather(
      dateTime: dateTime,
      descriptions: descriptions,
      temperatures: temperatures,
    );
  }

  LocalityDayWeather fromJson(Map<String, Object> json) {
    return LocalityDayWeather.fromJson(json);
  }
}

/// @nodoc
const $LocalityDayWeather = _$LocalityDayWeatherTearOff();

/// @nodoc
mixin _$LocalityDayWeather {
  @JsonKey(name: 'dt')
  int get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherDescription> get descriptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  WeatherTemperatures get temperatures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalityDayWeatherCopyWith<LocalityDayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalityDayWeatherCopyWith<$Res> {
  factory $LocalityDayWeatherCopyWith(
          LocalityDayWeather value, $Res Function(LocalityDayWeather) then) =
      _$LocalityDayWeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt') int dateTime,
      @JsonKey(name: 'weather') List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp') WeatherTemperatures temperatures});

  $WeatherTemperaturesCopyWith<$Res> get temperatures;
}

/// @nodoc
class _$LocalityDayWeatherCopyWithImpl<$Res>
    implements $LocalityDayWeatherCopyWith<$Res> {
  _$LocalityDayWeatherCopyWithImpl(this._value, this._then);

  final LocalityDayWeather _value;
  // ignore: unused_field
  final $Res Function(LocalityDayWeather) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? descriptions = freezed,
    Object? temperatures = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<WeatherDescription>,
      temperatures: temperatures == freezed
          ? _value.temperatures
          : temperatures // ignore: cast_nullable_to_non_nullable
              as WeatherTemperatures,
    ));
  }

  @override
  $WeatherTemperaturesCopyWith<$Res> get temperatures {
    return $WeatherTemperaturesCopyWith<$Res>(_value.temperatures, (value) {
      return _then(_value.copyWith(temperatures: value));
    });
  }
}

/// @nodoc
abstract class _$LocalityDayWeatherCopyWith<$Res>
    implements $LocalityDayWeatherCopyWith<$Res> {
  factory _$LocalityDayWeatherCopyWith(
          _LocalityDayWeather value, $Res Function(_LocalityDayWeather) then) =
      __$LocalityDayWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt') int dateTime,
      @JsonKey(name: 'weather') List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp') WeatherTemperatures temperatures});

  @override
  $WeatherTemperaturesCopyWith<$Res> get temperatures;
}

/// @nodoc
class __$LocalityDayWeatherCopyWithImpl<$Res>
    extends _$LocalityDayWeatherCopyWithImpl<$Res>
    implements _$LocalityDayWeatherCopyWith<$Res> {
  __$LocalityDayWeatherCopyWithImpl(
      _LocalityDayWeather _value, $Res Function(_LocalityDayWeather) _then)
      : super(_value, (v) => _then(v as _LocalityDayWeather));

  @override
  _LocalityDayWeather get _value => super._value as _LocalityDayWeather;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? descriptions = freezed,
    Object? temperatures = freezed,
  }) {
    return _then(_LocalityDayWeather(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<WeatherDescription>,
      temperatures: temperatures == freezed
          ? _value.temperatures
          : temperatures // ignore: cast_nullable_to_non_nullable
              as WeatherTemperatures,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalityDayWeather extends _LocalityDayWeather {
  _$_LocalityDayWeather(
      {@JsonKey(name: 'dt') required this.dateTime,
      @JsonKey(name: 'weather') required this.descriptions,
      @JsonKey(name: 'temp') required this.temperatures})
      : super._();

  factory _$_LocalityDayWeather.fromJson(Map<String, dynamic> json) =>
      _$$_LocalityDayWeatherFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dateTime;
  @override
  @JsonKey(name: 'weather')
  final List<WeatherDescription> descriptions;
  @override
  @JsonKey(name: 'temp')
  final WeatherTemperatures temperatures;

  @override
  String toString() {
    return 'LocalityDayWeather(dateTime: $dateTime, descriptions: $descriptions, temperatures: $temperatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalityDayWeather &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.descriptions, descriptions) ||
                const DeepCollectionEquality()
                    .equals(other.descriptions, descriptions)) &&
            (identical(other.temperatures, temperatures) ||
                const DeepCollectionEquality()
                    .equals(other.temperatures, temperatures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(descriptions) ^
      const DeepCollectionEquality().hash(temperatures);

  @JsonKey(ignore: true)
  @override
  _$LocalityDayWeatherCopyWith<_LocalityDayWeather> get copyWith =>
      __$LocalityDayWeatherCopyWithImpl<_LocalityDayWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalityDayWeatherToJson(this);
  }
}

abstract class _LocalityDayWeather extends LocalityDayWeather {
  factory _LocalityDayWeather(
      {@JsonKey(name: 'dt')
          required int dateTime,
      @JsonKey(name: 'weather')
          required List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp')
          required WeatherTemperatures temperatures}) = _$_LocalityDayWeather;
  _LocalityDayWeather._() : super._();

  factory _LocalityDayWeather.fromJson(Map<String, dynamic> json) =
      _$_LocalityDayWeather.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'weather')
  List<WeatherDescription> get descriptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'temp')
  WeatherTemperatures get temperatures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocalityDayWeatherCopyWith<_LocalityDayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
