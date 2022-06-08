import 'package:db_course_app/models/weather_day.dart';
import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherToday extends StatelessWidget {
  const WeatherToday({
    required this.weatherDay,
    Key? key,
  }) : super(key: key);

  final WeatherDay weatherDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(4, 0, 0, 0),
      padding: const EdgeInsets.only(top: 25, bottom: 58),
      child: Stack(
        children: [
          Transform.translate(
              offset: const Offset(-205, 0),
              child: Image.asset(weatherDay.icon)),
          Padding(
            padding: const EdgeInsets.only(left: 200, top: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Images.icGeoMark,
                      color: Colors.grey,
                    ),
                    Text(
                      weatherDay.locationName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  weatherDay.degrees,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  weatherDay.weatherDescription,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
