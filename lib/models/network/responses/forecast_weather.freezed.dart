// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) {
  return _ForecastWeather.fromJson(json);
}

/// @nodoc
class _$ForecastWeatherTearOff {
  const _$ForecastWeatherTearOff();

  _ForecastWeather call({required CityItem city}) {
    return _ForecastWeather(
      city: city,
    );
  }

  ForecastWeather fromJson(Map<String, Object> json) {
    return ForecastWeather.fromJson(json);
  }
}

/// @nodoc
const $ForecastWeather = _$ForecastWeatherTearOff();

/// @nodoc
mixin _$ForecastWeather {
  CityItem get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res>;
  $Res call({CityItem city});

  $CityItemCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  final ForecastWeather _value;
  // ignore: unused_field
  final $Res Function(ForecastWeather) _then;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityItem,
    ));
  }

  @override
  $CityItemCopyWith<$Res> get city {
    return $CityItemCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastWeatherCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$ForecastWeatherCopyWith(
          _ForecastWeather value, $Res Function(_ForecastWeather) then) =
      __$ForecastWeatherCopyWithImpl<$Res>;
  @override
  $Res call({CityItem city});

  @override
  $CityItemCopyWith<$Res> get city;
}

/// @nodoc
class __$ForecastWeatherCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res>
    implements _$ForecastWeatherCopyWith<$Res> {
  __$ForecastWeatherCopyWithImpl(
      _ForecastWeather _value, $Res Function(_ForecastWeather) _then)
      : super(_value, (v) => _then(v as _ForecastWeather));

  @override
  _ForecastWeather get _value => super._value as _ForecastWeather;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_ForecastWeather(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeather extends _ForecastWeather {
  _$_ForecastWeather({required this.city}) : super._();

  factory _$_ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherFromJson(json);

  @override
  final CityItem city;

  @override
  String toString() {
    return 'ForecastWeather(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForecastWeather &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$ForecastWeatherCopyWith<_ForecastWeather> get copyWith =>
      __$ForecastWeatherCopyWithImpl<_ForecastWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherToJson(this);
  }
}

abstract class _ForecastWeather extends ForecastWeather {
  factory _ForecastWeather({required CityItem city}) = _$_ForecastWeather;
  _ForecastWeather._() : super._();

  factory _ForecastWeather.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeather.fromJson;

  @override
  CityItem get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForecastWeatherCopyWith<_ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
