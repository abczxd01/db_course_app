import 'package:db_course_app/models/network/response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_description.freezed.dart';
part 'weather_description.g.dart';

@freezed
class WeatherDescription extends ResponseModel with _$WeatherDescription {
  factory WeatherDescription({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherDescription;

  factory WeatherDescription.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescriptionFromJson(json);
}
