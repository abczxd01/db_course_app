import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/images.dart';

const TextStyle textStyleTemperature = TextStyle(
  fontSize: 120,
  fontWeight: FontWeight.w400,
);

const TextStyle textStyleCity = TextStyle(
  color: Colors.grey,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
const TextStyle textStyleDescription = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

class WeatherToday extends StatelessWidget {
  static const temperature = '12°';
  static const city = 'Cupertino';
  static const description = 'Sunny and bright';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(4, 0, 0, 0),
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 58),
      child: Stack(
        children: [
          Transform.translate(
              offset: const Offset(-205, 0), child: Image.asset(Images.ic01d)),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 90, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Images.icGeoMark,
                      color: Colors.grey,
                    ),
                    const Text(
                      city,
                      style: textStyleCity,
                    ),
                  ],
                ),
                const Text(
                  temperature,
                  style: textStyleTemperature,
                ),
                const Text(
                  description,
                  style: textStyleDescription,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
