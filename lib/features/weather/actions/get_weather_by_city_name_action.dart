import 'dart:async';

import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/base_action.dart';
import 'package:db_course_app/app/operations.dart';
import 'package:db_course_app/services/weather_service.dart';
import 'package:get_it/get_it.dart';

class GetWeatherByCityNameAction extends BaseAction {
  GetWeatherByCityNameAction({required this.cityName});

  final String cityName;

  @override
  Operation get operationKey => Operation.getWeatherByCityName;

  @override
  Future<AppState?> reduce() async {
    final weatherService = GetIt.I.get<WeatherService>();

    final newCity = await weatherService.getForecastByCityName(cityName);

    return state.rebuild((s) => s.weather.currentCity = newCity.city);
  }
}
