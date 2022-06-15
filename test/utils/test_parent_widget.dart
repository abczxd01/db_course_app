import 'package:db_course_app/theme/weather_theme.dart';
import 'package:flutter/material.dart';

class TestParentWidget extends StatelessWidget {
  const TestParentWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: WeatherTheme.lightTheme,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: child,
      ),
    );
  }
}
