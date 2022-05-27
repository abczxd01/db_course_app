import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/images.dart';
import 'widgets/weather_days_list.dart';
import 'widgets/weather_today.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [WeatherToday(), WeatherDaysList()],
      ),
      appBar: AppBar(
          toolbarHeight: 70,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: const Color.fromARGB(4, 0, 0, 0),
          actions: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: onPressed,
                      icon: SvgPicture.asset(Images.icLocation),
                    ),
                    IconButton(
                      onPressed: onPressed,
                      icon: SvgPicture.asset(Images.icSearch),
                    )
                  ]),
            ))
          ]),
    );
  }

  void onPressed() {}
}
