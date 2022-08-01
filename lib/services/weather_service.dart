import 'package:db_course_app/api_client/weather_api_client.dart';
import 'package:db_course_app/models/network/responses/days_weather.dart';
import 'package:db_course_app/models/network/responses/forecast_weather.dart';
import 'package:db_course_app/models/network/responses/location_point.dart';
import 'package:db_course_app/utils/error_recorder.dart';

class WeatherService {
  WeatherService({
    required this.apiClient,
    required this.errorRecorder,
  });

  final WeatherApiClient apiClient;
  final ErrorRecorder errorRecorder;

  Future<ForecastWeather> getCityByLocation(LocationPoint point) {
    return apiClient
        .getCityByLocation(point)
        .onError(errorRecorder.recordError);
  }

  Future<DaysWeather> getDaysWeather(LocationPoint point) {
    return apiClient.getDaysWeather(point).onError(errorRecorder.recordError);
  }

  Future<ForecastWeather> getForecastByCityName(String cityName) {
    return apiClient
        .getForecastByCityName(cityName)
        .onError(errorRecorder.recordError);
  }
}
