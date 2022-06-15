import 'package:dash_kit_network/dash_kit_network.dart';

class WeatherApiEnvironment extends ApiEnvironment {
  const WeatherApiEnvironment({
    required String baseUrl,
    required this.appId,
    bool validateRequestsByDefault = true,
    bool isRequestsAuthorisedByDefault = false,
  }) : super(
          baseUrl: baseUrl,
          validateRequestsByDefault: validateRequestsByDefault,
          isRequestsAuthorisedByDefault: isRequestsAuthorisedByDefault,
        );

  final String appId;

  static const staging = WeatherApiEnvironment(
    baseUrl: 'https://api.openweathermap.org/data/2.5/',
    appId: '91c7a934c3c4c28481015d5388f0248b',
    validateRequestsByDefault: false,
    isRequestsAuthorisedByDefault: false,
  );
}
