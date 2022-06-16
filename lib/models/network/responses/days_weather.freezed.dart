// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'days_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaysWeather _$DaysWeatherFromJson(Map<String, dynamic> json) {
  return _DaysWeather.fromJson(json);
}

/// @nodoc
class _$DaysWeatherTearOff {
  const _$DaysWeatherTearOff();

  _DaysWeather call({required List<LocalityDayWeather> daily}) {
    return _DaysWeather(
      daily: daily,
    );
  }

  DaysWeather fromJson(Map<String, Object> json) {
    return DaysWeather.fromJson(json);
  }
}

/// @nodoc
const $DaysWeather = _$DaysWeatherTearOff();

/// @nodoc
mixin _$DaysWeather {
  List<LocalityDayWeather> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaysWeatherCopyWith<DaysWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysWeatherCopyWith<$Res> {
  factory $DaysWeatherCopyWith(
          DaysWeather value, $Res Function(DaysWeather) then) =
      _$DaysWeatherCopyWithImpl<$Res>;
  $Res call({List<LocalityDayWeather> daily});
}

/// @nodoc
class _$DaysWeatherCopyWithImpl<$Res> implements $DaysWeatherCopyWith<$Res> {
  _$DaysWeatherCopyWithImpl(this._value, this._then);

  final DaysWeather _value;
  // ignore: unused_field
  final $Res Function(DaysWeather) _then;

  @override
  $Res call({
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<LocalityDayWeather>,
    ));
  }
}

/// @nodoc
abstract class _$DaysWeatherCopyWith<$Res>
    implements $DaysWeatherCopyWith<$Res> {
  factory _$DaysWeatherCopyWith(
          _DaysWeather value, $Res Function(_DaysWeather) then) =
      __$DaysWeatherCopyWithImpl<$Res>;
  @override
  $Res call({List<LocalityDayWeather> daily});
}

/// @nodoc
class __$DaysWeatherCopyWithImpl<$Res> extends _$DaysWeatherCopyWithImpl<$Res>
    implements _$DaysWeatherCopyWith<$Res> {
  __$DaysWeatherCopyWithImpl(
      _DaysWeather _value, $Res Function(_DaysWeather) _then)
      : super(_value, (v) => _then(v as _DaysWeather));

  @override
  _DaysWeather get _value => super._value as _DaysWeather;

  @override
  $Res call({
    Object? daily = freezed,
  }) {
    return _then(_DaysWeather(
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<LocalityDayWeather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DaysWeather extends _DaysWeather {
  _$_DaysWeather({required this.daily}) : super._();

  factory _$_DaysWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DaysWeatherFromJson(json);

  @override
  final List<LocalityDayWeather> daily;

  @override
  String toString() {
    return 'DaysWeather(daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DaysWeather &&
            (identical(other.daily, daily) ||
                const DeepCollectionEquality().equals(other.daily, daily)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(daily);

  @JsonKey(ignore: true)
  @override
  _$DaysWeatherCopyWith<_DaysWeather> get copyWith =>
      __$DaysWeatherCopyWithImpl<_DaysWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaysWeatherToJson(this);
  }
}

abstract class _DaysWeather extends DaysWeather {
  factory _DaysWeather({required List<LocalityDayWeather> daily}) =
      _$_DaysWeather;
  _DaysWeather._() : super._();

  factory _DaysWeather.fromJson(Map<String, dynamic> json) =
      _$_DaysWeather.fromJson;

  @override
  List<LocalityDayWeather> get daily => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DaysWeatherCopyWith<_DaysWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
