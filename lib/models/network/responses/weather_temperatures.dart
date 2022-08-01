import 'package:db_course_app/models/network/response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_temperatures.freezed.dart';
part 'weather_temperatures.g.dart';

@freezed
class WeatherTemperatures extends ResponseModel with _$WeatherTemperatures {
  factory WeatherTemperatures({
    required double day,
    required double min,
    required double max,
    required double night,
  }) = _WeatherTemperatures;

  factory WeatherTemperatures.fromJson(Map<String, dynamic> json) =>
      _$WeatherTemperaturesFromJson(json);
}
