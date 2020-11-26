import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Position position;

  Future<void> getLCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
      try {
        position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);
        latitude = position.latitude;
        longitude = position.longitude;
      } catch (e) {
        print(e.toString());
      }
    } else {
      _requestPermission();
    }
  }

  _requestPermission() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
      print(permission);
    } else {
      _requestPermission();
    }
  }
}
