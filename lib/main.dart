import 'package:flutter/material.dart';
import 'package:weather_app_ui/constants/theme_data.dart';
import 'package:weather_app_ui/pages/home/home_page.dart';
import 'package:weather_app_ui/route/route.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      home: const HomePage(),
      initialRoute: '/',
      onGenerateRoute: GenerateRoute.route,
    );
  }
}
