import 'package:db_course_app/core/app_store_connector.dart';
import 'package:db_course_app/models/state/weather_day.dart';
import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherToday extends StatelessWidget {
  const WeatherToday({
    required this.animation,
    Key? key,
  }) : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AppStateConnector<WeatherDay>(
        converter: (s) => s.weather.today,
        builder: (context, weatherDay) {
          return Container(
            height: 445,
            color: const Color.fromARGB(4, 0, 0, 0),
            padding: const EdgeInsets.only(top: 25, bottom: 58),
            child: Stack(
              children: [
                AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) => Container(
                    padding: EdgeInsets.only(top: animation.value),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 15,
                          blurRadius: 50,
                          offset:
                              const Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRect(
                      child: Align(
                        alignment: Alignment.centerRight,
                        widthFactor: 0.5,
                        heightFactor: 1.0,
                        child: Image.asset(
                          weatherDay.icon,
                          width: 350,
                          height: 350,
                        ),
                      ),
                    ),
                  ),
                ),
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
                        '${weatherDay.degrees}',
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
        });
  }
}
