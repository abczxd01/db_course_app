import 'package:db_course_app/models/network/response_model.dart';
import 'package:db_course_app/models/network/responses/locality_day_weather.dart';
import 'package:db_course_app/models/weather_day.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'days_weather.freezed.dart';
part 'days_weather.g.dart';

@freezed
class DaysWeather extends ResponseModel with _$DaysWeather {
  factory DaysWeather({
    required List<LocalityDayWeather> daily,
  }) = _DaysWeather;

  factory DaysWeather.fromJson(Map<String, dynamic> json) =>
      _$DaysWeatherFromJson(json);

  const DaysWeather._();

  WeatherDay getToday({String locationName = ''}) {
    final weatherOfDay = daily[0];
    return WeatherDay(
      dayName: weatherOfDay.getDayName(),
      icon: weatherOfDay.getWeatherImagePath(),
      degrees: weatherOfDay.getTemperatureString(),
      locationName: locationName,
      weatherDescription: weatherOfDay.getWeatherDescription(),
    );
  }

  List<WeatherDay> getNextDays({String locationName = ''}) {
    final days = daily.slice(1, 5);
    return days
        .map((weatherOfDay) => WeatherDay(
              dayName: weatherOfDay.getDayName(),
              icon: weatherOfDay.getWeatherImagePath(),
              degrees: weatherOfDay.getTemperatureString(),
              locationName: locationName,
              weatherDescription: weatherOfDay.getWeatherDescription(),
            ))
        .toList();
  }
}
