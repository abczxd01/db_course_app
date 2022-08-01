import 'dart:async';

import 'package:dash_kit_network/dash_kit_network.dart';
import 'package:db_course_app/models/network/errors/request_common_error_exception.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class ErrorRecorder {
  ErrorRecorder({required this.context, this.isEnabled = true});

  final bool isEnabled;
  final String context;

  FutureOr<T> recordError<T>(dynamic error, [dynamic stacktrace]) {
    if (!isEnabled) {
      throw error;
    }

    if (stacktrace != null) {
      FirebaseCrashlytics.instance.log(stacktrace.toString());
    }

    if (error is NetworkConnectionException || error is RequestErrorException) {
      throw error;
    }

    if (error is RequestCommonErrorException) {
      FirebaseCrashlytics.instance.log(error.toString());
    }

    FirebaseCrashlytics.instance.recordError(error, stacktrace);

    throw error;
  }
}
