import 'package:db_course_app/models/weather_day.dart';
import 'package:db_course_app/navigation/app_router.dart';
import 'package:db_course_app/presentation/search/search_page.dart';
import 'package:db_course_app/resources/images.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/weather_days_list.dart';
import 'widgets/weather_today.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _chosenCity = ValueNotifier('Cupertino');
  List<String> pastSearchCities = [];

  late WeatherDay weatherDay = WeatherDay(
      dayName: 'Monday',
      icon: Images.ic01d,
      degrees: '12°',
      locationName: _chosenCity.value,
      weatherDescription: 'Sunny and bright');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WeatherToday(
            weatherDay: weatherDay,
          ),
          WeatherDaysList()
        ],
      ),
      appBar: AppBar(
          toolbarHeight: 70,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: const Color.fromARGB(4, 0, 0, 0),
          actions: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: onPressedLocation,
                      icon: SvgPicture.asset(Images.icLocation),
                    ),
                    IconButton(
                      onPressed: onPressedSearch,
                      icon: SvgPicture.asset(Images.icSearch),
                    )
                  ]),
            ))
          ]),
    );
  }

  void onPressedSearch() {
    appRouter.goTo(
      context: context,
      route: SearchPage(
        chosenCity: _chosenCity,
        onCityChosen: () => {setState(() {})},
        pastSearchCities: pastSearchCities,
      ),
    );
  }

  void onPressedLocation() {}
}
