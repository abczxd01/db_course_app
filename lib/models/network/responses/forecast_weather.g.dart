// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastWeather _$$_ForecastWeatherFromJson(Map<String, dynamic> json) =>
    _$_ForecastWeather(
      city: CityItem.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastWeatherToJson(_$_ForecastWeather instance) =>
    <String, dynamic>{
      'city': instance.city.toJson(),
    };
