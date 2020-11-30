import 'package:auto_route/auto_route.dart';
import 'package:clima/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
        initialRoute: Routes.loadingScreen,
        builder: (_, navigator) => Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: navigator,
        ),
      ),
    );
  }
}
