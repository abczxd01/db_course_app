// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DaysWeather _$$_DaysWeatherFromJson(Map<String, dynamic> json) =>
    _$_DaysWeather(
      daily: (json['daily'] as List<dynamic>)
          .map((e) => LocalityDayWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DaysWeatherToJson(_$_DaysWeather instance) =>
    <String, dynamic>{
      'daily': instance.daily.map((e) => e.toJson()).toList(),
    };
