import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherToday extends StatelessWidget {
  const WeatherToday({
    required this.temperature,
    required this.city,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String temperature;
  final String city;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(4, 0, 0, 0),
      padding: const EdgeInsets.only(top: 25, bottom: 58),
      child: Stack(
        children: [
          Transform.translate(
              offset: const Offset(-205, 0), child: Image.asset(Images.ic01d)),
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
                      city,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  temperature,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  description,
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
