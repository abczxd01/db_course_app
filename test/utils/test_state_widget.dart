import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:flutter/material.dart';

import 'test_parent_widget.dart';

class TestStateWidget extends StatelessWidget {
  const TestStateWidget({
    required this.child,
    this.initialState,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final AppState? initialState;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: Store<AppState>(
        initialState: initialState ?? AppState.initial(),
        actionObservers: [],
      ),
      child: TestParentWidget(child: child),
    );
  }
}
