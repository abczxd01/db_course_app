import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/store/store.dart';
import 'package:db_course_app/configuration/api_client.dart';
import 'package:db_course_app/configuration/weather_api_environment.dart';
import 'package:db_course_app/weather_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const environment = WeatherApiEnvironment.staging;
  final apiClient = configureApiClient(environment);
  configureDependencyInjection(apiClient);

  final store = configureStore();

  runApp(
    StoreProvider<AppState>(
      store: store,
      child: const WeatherApp(),
    ),
  );
}
