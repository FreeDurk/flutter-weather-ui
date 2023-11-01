import 'package:flutter/material.dart';
import 'package:weather_app_ui/constants/theme_data.dart';
import 'package:weather_app_ui/pages/home/widgets/current_forecast.dart';
import 'package:weather_app_ui/pages/home/widgets/current_readings.dart';
import 'package:weather_app_ui/pages/home/widgets/next_seven_days.dart';
import 'package:weather_app_ui/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mabolo,",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: Colors.black),
                ),
                Text(
                  "Cebu",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: Colors.black, fontSize: 45),
                ),
                const SizedBox(height: 10),
                Text(
                  "Tuesday, 31 Oct.",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: greyOpacity),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const CurrentForeCast(),
          // ignore: avoid_unnecessary_containers
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CurrentReadings(
                body: '26%',
                img: "assets/images/heavy-rain.png",
              ),
              CurrentReadings(
                body: '8km/h',
                img: "assets/images/blowing.png",
              ),
              CurrentReadings(
                body: '26%',
                img: "assets/images/cloud.png",
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/next-seven-days');
                  },
                  child: const Text(
                    "Next 7 Days > ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: NextSevenDays(),
          )
        ],
      ),
    );
  }
}
