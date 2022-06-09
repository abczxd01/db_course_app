import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({required this.city, Key? key}) : super(key: key);

  final String city;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Images.icGeoMark,
          color: Colors.indigo.shade900,
        ),
        Text(
          city,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.indigo.shade900),
        ),
      ],
    );
  }
}
