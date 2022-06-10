// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityItem _$$_CityItemFromJson(Map<String, dynamic> json) => _$_CityItem(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      coord: LocationPoint.fromJson(json['coord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CityItemToJson(_$_CityItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'coord': instance.coord.toJson(),
    };
