import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_ui/constants/theme_data.dart';

class CurrentForeCast extends StatefulWidget {
  const CurrentForeCast({super.key});

  @override
  State<CurrentForeCast> createState() => _CurrentForeCastState();
}

class _CurrentForeCastState extends State<CurrentForeCast> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: secondaryColor.withOpacity(1),
              offset: const Offset(1, 12),
              blurRadius: 30,
              spreadRadius: -2,
            ),
          ],
          gradient: const LinearGradient(
            colors: [primaryColor, secondaryColor],
            stops: [0.23, 0.75],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              bottom: 45,
              child: LottieBuilder.asset(
                "assets/lottie/thunder.json",
                height: 190,
                width: 190,
              ),
            ),
            Positioned(
              bottom: 40,
              left: 25,
              child: Text(
                "Heavy Rain",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 25,
              child: Text(
                "Tonight",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
            Positioned(
              right: 25,
              top: 60,
              child: Text(
                "19 \u2103",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 60),
              ),
            )
          ],
        ),
      ),
    );
  }
}
