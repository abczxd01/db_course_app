library weather_api;

import 'package:dash_kit_network/dash_kit_network.dart';
import 'package:db_course_app/api_client/response_mappers.dart'
    as response_mapper;
import 'package:db_course_app/models/network/responses/days_weather.dart';
import 'package:db_course_app/models/network/responses/forecast_weather.dart';
import 'package:db_course_app/models/network/responses/location_point.dart';

class WeatherApiClient extends ApiClient {
  WeatherApiClient({
    required ApiEnvironment environment,
    required Dio dio,
    ErrorHandlerDelegate? errorHandlerDelegate,
  }) : super(
          environment: environment,
          dio: dio,
          errorHandlerDelegate: errorHandlerDelegate,
        );
  Future<ForecastWeather> getCityByLocation(LocationPoint point) {
    return get(
      path: 'forecast',
      queryParams: {
        'lat': point.lat,
        'lon': point.lon,
        'cnt': 1,
      },
      responseMapper: response_mapper.standard(
        (data) => ForecastWeather.fromJson(data),
      ),
    );
  }

  Future<DaysWeather> getDaysWeather(LocationPoint point) {
    return get(
        path: 'onecall',
        queryParams: {
          'lat': point.lat,
          'lon': point.lon,
          'exclude': 'hourly,current,minutely,alerts'
        },
        responseMapper:
            response_mapper.standard((data) => DaysWeather.fromJson(data)));
  }

  Future<ForecastWeather> getForecastByCityName(String cityName) {
    return get(
      path: 'forecast',
      queryParams: {
        'q': cityName,
        'cnt': 1,
      },
      responseMapper: response_mapper.standard(
        (data) => ForecastWeather.fromJson(data),
      ),
    );
  }
}
