import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';

const textStylePrecipitation = TextStyle(
  color: Color.fromRGBO(1, 14, 130, 0.5),
  fontSize: 12,
);

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({
    required this.temperature,
    required this.weekDay,
    required this.weatherImagePath,
    this.precipitation,
    this.last = false,
    Key? key,
  }) : super(key: key);

  final String temperature;
  final String weekDay;
  final String weatherImagePath;
  final int? precipitation;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          border: !last
              ? const Border(
                  bottom: BorderSide(
                      width: 1, color: Color.fromRGBO(1, 14, 130, 0.1)))
              : null),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              weekDay,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Image.asset(
                  weatherImagePath,
                  scale: 15,
                ),
                if (precipitation != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      '$precipitation%',
                      style: textStylePrecipitation,
                    ),
                  ),
              ],
            ),
          ),
          Text(
            temperature,
          ),
        ],
      ),
    );
  }
}

class WeatherDaysList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const [
        WeatherListItem(
            temperature: '10°',
            weekDay: 'Monday',
            weatherImagePath: Images.ic01d),
        WeatherListItem(
            temperature: '15°',
            weekDay: 'Tuesday',
            weatherImagePath: Images.ic01d),
        WeatherListItem(
            temperature: '14°',
            weekDay: 'Wednesday',
            weatherImagePath: Images.ic02d),
        WeatherListItem(
            temperature: '14°',
            weekDay: 'Thursday',
            precipitation: 40,
            last: true,
            weatherImagePath: Images.ic09d)
      ]),
    );
  }
}
