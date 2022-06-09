import 'package:db_course_app/models/location_point.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationService {
  Future<LocationPoint> getLocationPoint() async {
    // write your code here

    final point = await Geolocator.getCurrentPosition();
    return LocationPoint(
      lat: point.latitude,
      lon: point.longitude,
    );
  }
}
