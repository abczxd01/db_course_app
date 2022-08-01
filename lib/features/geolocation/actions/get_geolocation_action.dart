import 'package:db_course_app/app/app_state.dart';
import 'package:db_course_app/app/base_action.dart';
import 'package:db_course_app/app/operations.dart';
import 'package:db_course_app/services/geolocation_service.dart';
import 'package:get_it/get_it.dart';

class GetGeolocationAction extends BaseAction {
  @override
  Operation get operationKey => Operation.getGeolocation;

  @override
  Future<AppState?> reduce() async {
    final geolocationService = GetIt.I.get<GeolocationService>();

    final point = await geolocationService.getLocationPoint();

    return state.rebuild((s) => s.geolocation.point = point);
  }
}
