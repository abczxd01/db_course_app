// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locality_day_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalityDayWeather _$$_LocalityDayWeatherFromJson(
        Map<String, dynamic> json) =>
    _$_LocalityDayWeather(
      dateTime: json['dt'] as int,
      descriptions: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      temperatures:
          WeatherTemperatures.fromJson(json['temp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocalityDayWeatherToJson(
        _$_LocalityDayWeather instance) =>
    <String, dynamic>{
      'dt': instance.dateTime,
      'weather': instance.descriptions.map((e) => e.toJson()).toList(),
      'temp': instance.temperatures.toJson(),
    };
