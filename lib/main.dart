import 'dart:async';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/store/store.dart';
import 'package:db_course_app/configuration/api_client.dart';
import 'package:db_course_app/configuration/weather_api_environment.dart';
import 'package:db_course_app/weather_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

// Import the generated file
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final store = configureStore();
  const environment = WeatherApiEnvironment.staging;
  final apiClient = configureApiClient(environment);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  configureDependencyInjection(apiClient);

  await initializeDateFormatting('ru_RU', null);

  runZonedGuarded(
    () {
      runApp(
        StoreProvider<AppState>(
          store: store,
          child: const WeatherApp(),
        ),
      );
    },
    FirebaseCrashlytics.instance.recordError,
  );
}
