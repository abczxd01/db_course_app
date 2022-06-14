library weather_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:db_course_app/models/network/responses/city_item.dart';
import 'package:db_course_app/models/state/weather_day.dart';
import 'package:db_course_app/resources/images.dart';
import 'package:db_course_app/resources/strings.dart';

part 'weather_state.g.dart';

abstract class WeatherState
    implements Built<WeatherState, WeatherStateBuilder> {
  factory WeatherState([void Function(WeatherStateBuilder b) updates]) =
      _$WeatherState;

  WeatherState._();

  CityItem? get currentCity;

  WeatherDay get today;

  BuiltList<WeatherDay> get nextDays;

  static WeatherState initial() => WeatherState(
        (b) => b
          ..currentCity = null
          ..today = WeatherDay(
            dayName: Strings.monday,
            icon: Images.ic02d,
            degrees: '--',
            locationName: '',
            weatherDescription: '',
          )
          ..nextDays = ListBuilder(),
      );
}
