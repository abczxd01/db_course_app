import 'dart:io';

extension PlatformEnvironmentExtension on Platform {
  static bool isTestingEnvironment =
      Platform.environment.containsKey('FLUTTER_TEST');
}
