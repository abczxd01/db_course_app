import 'package:db_course_app/models/network/response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_point.freezed.dart';
part 'location_point.g.dart';

@freezed
class LocationPoint extends ResponseModel with _$LocationPoint {
  factory LocationPoint({
    required double lat,
    required double lon,
  }) = _LocationPoint;

  factory LocationPoint.fromJson(Map<String, dynamic> json) =>
      _$LocationPointFromJson(json);
}
