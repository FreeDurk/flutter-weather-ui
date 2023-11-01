import 'package:flutter/material.dart';
import 'package:weather_app_ui/pages/home/home_page.dart';
import 'package:weather_app_ui/pages/next_days/next_days.dart';

class GenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/next-seven-days':
        return MaterialPageRoute(builder: (context) => const NextDays());
      // case '/dashboard':
      // return MaterialPageRoute(builder: (context) => const Dashboard());

      default:
        return routeError();
    }
  }

  static Route<dynamic> routeError() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text("Something went wrong."),
          ),
        );
      },
    );
  }
}
