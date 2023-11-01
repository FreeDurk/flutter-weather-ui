import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_ui/constants/theme_data.dart';
import 'package:weather_app_ui/pages/next_days/widgets/day_readings.dart';
import 'package:weather_app_ui/pages/next_days/widgets/days.dart';
import 'package:weather_app_ui/widgets/app_bar.dart';

class NextDays extends StatefulWidget {
  const NextDays({super.key});

  @override
  State<NextDays> createState() => _NextDaysState();
}

class _NextDaysState extends State<NextDays> {
  int selectedDay = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, idx) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedDay = idx;
                      });
                    },
                    child: Days(
                      isSelected: selectedDay == idx ? true : false,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: deviceWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -90,
                    bottom: 190,
                    left: 25,
                    right: 25,
                    child: Container(
                      width: deviceWidth * 0.32,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [primaryColor, Colors.blue.shade500],
                          stops: const [0.35, 0.75],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -120,
                    left: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LottieBuilder.asset('assets/lottie/thunder.json'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Heavy Rain",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          "Tonight",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 130,
                    left: 80,
                    child: Row(
                      children: [
                        DayReadings(
                          body: "60%",
                          img: "assets/images/heavy-rain.png",
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        DayReadings(
                          body: "10km/h",
                          img: "assets/images/blowing.png",
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        DayReadings(
                          body: "12%",
                          img: "assets/images/cloud.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
