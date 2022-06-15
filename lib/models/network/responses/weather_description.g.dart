// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDescription _$$_WeatherDescriptionFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherDescription(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherDescriptionToJson(
        _$_WeatherDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
