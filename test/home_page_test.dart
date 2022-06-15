import 'package:built_collection/built_collection.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/models/state/weather_day.dart';
import 'package:db_course_app/presentation/home/home_page.dart';
import 'package:db_course_app/resources/images.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'utils/devices.dart';
import 'utils/setup.dart';
import 'utils/test_state_widget.dart';

void main() {
  setUpAll(() async {
    await setupEnvironment();
  });

  //Path to folder with snapshots
  const path = '/';

  testGoldens(
    //Log text for test
    'Home Page should look correct',
    (tester) async {
      //State initialization
      final state = AppState.initial().rebuild((b) => b.weather
        ..today = WeatherDay(
          dayName: 'Sunday',
          degrees: '15',
          icon: Images.ic01d,
          locationName: 'London',
          weatherDescription: 'Rain',
        )
        ..nextDays = ListBuilder([
          WeatherDay(
            dayName: 'Sunday',
            degrees: '15',
            icon: Images.ic01d,
            locationName: 'London',
            weatherDescription: 'Rain',
          ),
          WeatherDay(
            dayName: 'Sunday',
            degrees: '15',
            icon: Images.ic01d,
            locationName: 'London',
            weatherDescription: 'Rain',
          ),
          WeatherDay(
            dayName: 'Sunday',
            degrees: '15',
            icon: Images.ic01d,
            locationName: 'London',
            weatherDescription: 'Rain',
          ),
          WeatherDay(
            dayName: 'Sunday',
            degrees: '15',
            icon: Images.ic01d,
            locationName: 'London',
            weatherDescription: 'Rain',
          ),
        ]));

      //Test widget creation
      const page = HomePage();

      //pumpWidgetBuilder - extension for WidgetTester with
      // a function pumpWidgetBuilder to allow for easy configuration
      // of the parent widget tree & device configuration to emulate
      await tester.pumpWidgetBuilder(
        page,
        wrapper: (child) => TestStateWidget(
          initialState: state,
          child: child,
        ),
      );

      //multiScreenGolden will run scenarios for given devices list
      await multiScreenGolden(
        tester,
        '$path',
        devices: devicesWithDifferentTextScales(),
      );
    },
  );
}
