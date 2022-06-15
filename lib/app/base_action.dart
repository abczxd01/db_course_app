import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/operations.dart';
import 'package:db_course_app/utils/test.dart';

abstract class BaseAction extends Action<AppState> {
  BaseAction({bool isRefreshing = false}) : super(isRefreshing: isRefreshing);

  @override
  Operation? get operationKey => null;

  @override
  bool abortDispatch() => isTestingEnvironment();
}
