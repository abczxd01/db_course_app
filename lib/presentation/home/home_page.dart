import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/operations.dart';
import 'package:db_course_app/features/geolocation/actions/get_geolocation_action.dart';
import 'package:db_course_app/features/weather/actions/get_weather_by_location.dart';
import 'package:db_course_app/hooks/home_page_hooks.dart';
import 'package:db_course_app/hooks/push_notification_hooks.dart';
import 'package:db_course_app/navigation/app_router.dart';
import 'package:db_course_app/presentation/search/search_page.dart';
import 'package:db_course_app/resources/images.dart';
import 'package:db_course_app/services/push_notification_service.dart';
import 'package:db_course_app/utils/test.dart';
import 'package:db_course_app/widgets/connected_loadable.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/weather_days_list.dart';
import 'widgets/weather_today.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final context = useContext();
    final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');
    final dispatch = storeProvider.dispatch;
    final pastSearchCities = <String>[];
    final animation = useCurvedAnimation();

    final getGeolocationByLocation = () async {
      try {
        await dispatch(GetGeolocationAction());
        await dispatch(GetWeatherByLocationAction());
      } catch (e) {
        showSimpleDialog(
          context: context,
          title: 'Oops!',
          text: e.toString(),
        );
      }
    };

    useEffect(() {
      if (!isTestingEnvironment()) {
        getGeolocationByLocation();
      }
      return;
    }, const []);

    requestNotificationPermissions();

    usePushNotificationToken();

    useFirebaseMessagingOpennedAppListener();
    useFirebaseMessagingForegroundListener();
    useFirebaseMessagingBackgroundListener();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: const Color.fromARGB(4, 0, 0, 0),
        leading: IconButton(
          onPressed: getGeolocationByLocation,
          icon: SvgPicture.asset(Images.icLocation),
        ),
        actions: [
          IconButton(
            onPressed: () => appRouter.goTo(
              context: context,
              route: SearchPage(
                pastSearchCities: pastSearchCities,
              ),
            ),
            icon: SvgPicture.asset(Images.icSearch),
          ),
        ],
      ),
      body: ConnectedLoadable(
        converter: (s) => [
          s.getOperationState(Operation.getGeolocation),
          s.getOperationState(Operation.getWeatherByLocation),
          s.getOperationState(Operation.getWeatherByCityName),
        ].any((element) => element.isInProgress),
        child: ListView(
          children: [
            WeatherToday(animation: animation),
            WeatherDaysList(),
          ],
        ),
      ),
    );
  }

  Future showSimpleDialog(
      {required BuildContext context,
      required String title,
      required String text}) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        content: Text(text, style: Theme.of(context).textTheme.bodyText1),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
