import 'package:db_course_app/models/network/responses/location_point.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationService {
  Future<LocationPoint> getLocationPoint() async {
    bool isLocationEnabled;
    LocationPermission permission;

    isLocationEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final point = await Geolocator.getCurrentPosition();
    return LocationPoint(
      lat: point.latitude,
      lon: point.longitude,
    );
  }
}
