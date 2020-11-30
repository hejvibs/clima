import 'package:auto_route/auto_route_annotations.dart';
import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:clima/screens/location_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LoadingScreen, initial: true),
    MaterialRoute(page: LocationScreen),
    MaterialRoute(page: CityScreen),
  ],
)
class $AppRouter {}
