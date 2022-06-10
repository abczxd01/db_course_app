import 'package:flutter/material.dart';

final AppRouter appRouter = AppRouter();

class AppRouter {
  Future<T?>? goTo<T extends Object?>({
    required BuildContext context,
    required Widget route,
  }) {
    return Navigator.of(
      context,
    ).push<T>(
      MaterialPageRoute(
        builder: (context) => route,
        settings: RouteSettings(
          name: route.runtimeType.toString(),
        ),
      ),
    );
  }

  void goBack(BuildContext context) {
    final navState = Navigator.of(context);
    if (navState.canPop()) {
      navState.pop();
    }
  }
}
