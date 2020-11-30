// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/city_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/location_screen.dart';

class Routes {
  static const String loadingScreen = '/';
  static const String locationScreen = '/location-screen';
  static const String cityScreen = '/city-screen';
  static const all = <String>{
    loadingScreen,
    locationScreen,
    cityScreen,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loadingScreen, page: LoadingScreen),
    RouteDef(Routes.locationScreen, page: LocationScreen),
    RouteDef(Routes.cityScreen, page: CityScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoadingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoadingScreen(),
        settings: data,
      );
    },
    LocationScreen: (data) {
      final args = data.getArgs<LocationScreenArguments>(
        orElse: () => LocationScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            LocationScreen(locationWeather: args.locationWeather),
        settings: data,
      );
    },
    CityScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CityScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LocationScreen arguments holder class
class LocationScreenArguments {
  final dynamic locationWeather;
  LocationScreenArguments({this.locationWeather});
}
