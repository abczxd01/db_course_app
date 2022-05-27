import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

const TextStyle textStylePrecipitation = TextStyle(
    color: Color.fromRGBO(1, 14, 130, 0.5),
    fontSize: 12,
    fontWeight: FontWeight.w400);

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
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
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
              style: textStyle,
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
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
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
            style: textStyle,
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
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
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
