import 'dart:async';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/base_action.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef Dispatcher = Future<void> Function(BaseAction);

FutureOr<ActionStatus> Function(ReduxAction<AppState> action, {bool notify})
    useDispatcher() {
  final context = useContext();
  final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');

  return storeProvider.dispatch;
}
