import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getLCurrentLocation();
    print('Current latitude is: ${location.latitude} and longitude is: ${location.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
