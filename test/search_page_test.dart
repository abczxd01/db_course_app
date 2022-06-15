import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/models/network/responses/city_item.dart';
import 'package:db_course_app/models/network/responses/location_point.dart';
import 'package:db_course_app/presentation/search/search_page.dart';
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
  const path = 'search_page';

  testGoldens(
    //Log text for test
    'Search Page should look correct',
    (tester) async {
      //State initialization
      final state = AppState.initial().rebuild(
        (b) => b.weather
          ..currentCity = CityItem(
            id: 1,
            name: 'London',
            country: 'GB',
            coord: LocationPoint(lon: 1, lat: 2),
          ),
      );

      //Test widget creation
      const page = SearchPage(pastSearchCities: <String>[]);

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
        '$path/search_page',
        devices: devicesWithDifferentTextScales(),
      );
    },
  );
}
