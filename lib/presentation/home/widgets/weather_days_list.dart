import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/core/app_store_connector.dart';
import 'package:db_course_app/models/state/weather_day.dart';
import 'package:flutter/material.dart';

const textStylePrecipitation = TextStyle(
  color: Color.fromRGBO(1, 14, 130, 0.5),
  fontSize: 12,
);

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({
    required this.degrees,
    required this.dayName,
    required this.icon,
    this.precipitation,
    Key? key,
  }) : super(key: key);

  final String degrees;
  final String dayName;
  final String icon;
  final int? precipitation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            dayName,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Image.asset(
                icon,
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
          '$degrees°',
        ),
      ],
    );
  }
}

class WeatherDaysList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppStateConnector<BuiltList<WeatherDay>>(
        converter: (s) => s.weather.nextDays,
        builder: (context, nextDays) {
          return Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: nextDays.length,
                  separatorBuilder: (context, index) => const Divider(
                        thickness: 1,
                        height: 16,
                      ),
                  itemBuilder: (context, index) {
                    print(nextDays[index].icon);
                    return WeatherListItem(
                        degrees: nextDays[index].degrees,
                        dayName: nextDays[index].dayName,
                        icon: nextDays[index].icon);
                  }));
        });
  }
}
