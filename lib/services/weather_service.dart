import 'package:db_course_app/api_client/weather_api_client.dart';
import 'package:db_course_app/models/network/responses/days_weather.dart';
import 'package:db_course_app/models/network/responses/forecast_weather.dart';
import 'package:db_course_app/models/network/responses/location_point.dart';

class WeatherService {
  WeatherService(this.apiClient);

  final WeatherApiClient apiClient;

  Future<ForecastWeather> getCityByLocation(LocationPoint point) {
    return apiClient.getCityByLocation(point);
  }

  Future<DaysWeather> getDaysWeather(LocationPoint point) {
    return apiClient.getDaysWeather(point);
  }
}
