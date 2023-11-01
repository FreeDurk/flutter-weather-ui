import 'package:flutter/material.dart';
import 'package:weather_app_ui/constants/theme_data.dart';

class DayReadings extends StatelessWidget {
  final String img;
  final String body;
  const DayReadings({required this.body, required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primaryColor,
          ),
          child: Image.asset(img),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
        ),
      ],
    );
  }
}
