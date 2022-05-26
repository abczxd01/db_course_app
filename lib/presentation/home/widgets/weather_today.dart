import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/images.dart';

const TextStyle textStyleTemperature = TextStyle(
  fontSize: 120,
  fontWeight: FontWeight.w400,
);

const TextStyle textStyleCity = TextStyle(
  color: Colors.black45,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
const TextStyle textStyleDescription = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

class WeatherToday extends StatelessWidget {
  String temperature = '12°';
  String city = 'Cupertino';
  String description = 'Sunny and bright';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Images.ic01d,
        ),
        Text(
          temperature,
          style: textStyleTemperature,
        ),
        Row(
          children: [
            SvgPicture.asset(Images.icGeoMark),
            Text(
              city,
              style: textStyleCity,
            ),
          ],
        ),
        Text(
          description,
          style: textStyleDescription,
        )
      ],
    );
  }
}
