import 'dart:io';

import 'package:flutter/foundation.dart';

bool isTestingEnvironment() {
  return !kIsWeb && Platform.environment.containsKey('FLUTTER_TEST');
}
