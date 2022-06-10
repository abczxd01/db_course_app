import 'package:dash_kit_network/dash_kit_network.dart';
import 'package:db_course_app/models/network/errors/request_common_error_exception.dart';

T Function(Response) standard<T>(T Function(Map<String, dynamic>) mapper) {
  return (response) {
    final statusCode = response.statusCode;

    if (statusCode == null) {
      throw Exception('Status code is null');
    }

    final isRequestSuccessful = statusCode >= 200 && statusCode < 300;
    final data = response.data;
    final isEmptyString = data is String && data.isEmpty;
    final isJsonResponse = data is Map<String, dynamic>;

    if (isRequestSuccessful) {
      if (isJsonResponse) {
        return mapper(data);
      } else if (isEmptyString) {
        return mapper({});
      }
    }

    throw RequestCommonErrorException(response);
  };
}
