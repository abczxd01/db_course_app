import 'package:db_course_app/models/network/response_model.dart';
import 'package:db_course_app/models/network/responses/weather_description.dart';
import 'package:db_course_app/models/network/responses/weather_temperatures.dart';
import 'package:db_course_app/resources/images.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/date_symbol_data_local.dart'; //for date locale
import 'package:intl/intl.dart'; //for date format

part 'locality_day_weather.freezed.dart';
part 'locality_day_weather.g.dart';

@freezed
class LocalityDayWeather extends ResponseModel with _$LocalityDayWeather {
  factory LocalityDayWeather({
    @JsonKey(name: 'dt') required int dateTime,
    @JsonKey(name: 'weather') required List<WeatherDescription> descriptions,
    @JsonKey(name: 'temp') required WeatherTemperatures temperatures,
  }) = _LocalityDayWeather;

  factory LocalityDayWeather.fromJson(Map<String, dynamic> json) =>
      _$LocalityDayWeatherFromJson(json);

  const LocalityDayWeather._();

  String getDayName() {
    initializeDateFormatting();
    final date = DateTime.fromMillisecondsSinceEpoch(dateTime * 1000);
    return DateFormat.EEEE('ru').format(date);
  }

  WeatherDescription? _getFirstDescription() {
    try {
      return descriptions.first;
    } catch (e) {
      return null;
    }
  }

  String getTemperatureString() => temperatures.day.round().toString();

  String getWeatherDescription() => _getFirstDescription()?.description ?? '';

  String getWeatherImagePath() {
    final shortName = _getFirstDescription()?.icon;
    if (shortName?.isNotEmpty ?? false) {
      return '${Images.pngFolder}/$shortName.png';
    }
    return '';
  }
}
