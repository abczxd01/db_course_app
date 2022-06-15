import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/base_action.dart';
import 'package:db_course_app/app/operations.dart';
import 'package:db_course_app/services/weather_service.dart';
import 'package:get_it/get_it.dart';

class GetWeatherByLocationAction extends BaseAction {
  @override
  Operation get operationKey => Operation.getWeatherByLocation;

  @override
  Future<AppState?> reduce() async {
    final weatherService = GetIt.I.get<WeatherService>();

    final point = state.geolocation.point;

    final locality = await weatherService.getCityByLocation(point!);

    final daysWeather = await weatherService.getDaysWeather(point);

    final today = daysWeather.getToday(locationName: locality.city.name);

    final nextDays = daysWeather.getNextDays(locationName: locality.city.name);

    return state.rebuild(
      (s) => s
        ..weather.currentCity = locality.city
        ..weather.today = today
        ..weather.nextDays = BuiltList.of(nextDays).toBuilder(),
    );
  }
}
