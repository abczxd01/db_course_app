import 'dart:async';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';

class ReduxActionObserver extends ActionObserver<AppState> {
  final _onAction = StreamController<ReduxAction>.broadcast();

  Stream<ReduxAction> get onAction => _onAction.stream;

  @override
  void observe(ReduxAction action, int dispatchCount, {bool ini = false}) {
    _onAction.add(action);
  }
}
