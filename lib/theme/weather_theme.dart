import 'package:flutter/material.dart';

const defaultFontFamily = 'Manrope';

const defaultTextStyle = TextStyle(
  fontFamily: defaultFontFamily,
  color: Colors.black,
  height: 1.1,
);

class WeatherTheme {
  WeatherTheme._();

  static final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.indigo,
    ).copyWith(
      secondary: Colors.indigoAccent,
    ),
    scaffoldBackgroundColor: Colors.white,
    shadowColor: const Color.fromRGBO(255, 191, 0, 0.2),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: defaultFontFamily,
        color: Colors.black,
        fontSize: 120,
        fontWeight: FontWeight.w400,
        height: 1.1,
      ),
      bodyText2: defaultTextStyle,
      // Дописывайте сюда остальные текстовые стили приложения которые вам могут понадобиться
    ),
  );
}
