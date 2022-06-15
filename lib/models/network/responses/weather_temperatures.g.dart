// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_temperatures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherTemperatures _$$_WeatherTemperaturesFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherTemperatures(
      day: (json['day'] as num).toDouble(),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeatherTemperaturesToJson(
        _$_WeatherTemperatures instance) =>
    <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
    };
