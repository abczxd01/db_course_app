import 'package:dash_kit_network/dash_kit_network.dart';
import 'package:db_course_app/api_client/weather_api_client.dart';
import 'package:db_course_app/configuration/weather_api_environment.dart';
import 'package:db_course_app/utils/debug.dart';

WeatherApiClient configureApiClient(WeatherApiEnvironment environment) {
  final apiDio = _createApiDio(environment);

  final client = WeatherApiClient(
    environment: environment,
    dio: apiDio,
  );

  return client;
}

Dio _createApiDio(WeatherApiEnvironment environment) {
  final apiDio = Dio();

  final map = <String, String>{
    'appid': environment.appId,
    'lang': 'ru',
    'units': 'metric',
  };

  apiDio.options.connectTimeout = 30 * 1000;
  apiDio.options.receiveTimeout = 30 * 1000;
  apiDio.options.sendTimeout = 30 * 1000;

  apiDio.options.queryParameters.addAll(map);

  debug(() {
    apiDio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  });

  return apiDio;
}
