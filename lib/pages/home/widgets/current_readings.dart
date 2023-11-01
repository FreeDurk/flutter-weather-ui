import 'package:flutter/material.dart';
import 'package:weather_app_ui/constants/theme_data.dart';

class CurrentReadings extends StatelessWidget {
  final String body;
  final String img;
  const CurrentReadings({
    required this.body,
    required this.img,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: secondaryColor.withOpacity(0.09),
          ),
          child: Image.asset(img),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
        ),
      ],
    );
  }
}
