import 'package:db_course_app/models/network/response_model.dart';
import 'package:db_course_app/models/network/responses/city_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_weather.freezed.dart';
part 'forecast_weather.g.dart';

@freezed
class ForecastWeather extends ResponseModel with _$ForecastWeather {
  factory ForecastWeather({
    required CityItem city,
  }) = _ForecastWeather;

  factory ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherFromJson(json);

  const ForecastWeather._();
}
