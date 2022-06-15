import 'package:flutter/foundation.dart';

void debug(void Function() debugAction) {
  if (!kReleaseMode) {
    debugAction();
  }
}
