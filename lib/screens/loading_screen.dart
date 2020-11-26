import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

  void getData() async {
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?q=london&appid=2df3bbc58358e57b293149d9ca8d8f01');

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print('Error code received: => ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
