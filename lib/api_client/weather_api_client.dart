library weather_api;

import 'package:dash_kit_network/dash_kit_network.dart';

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
}
