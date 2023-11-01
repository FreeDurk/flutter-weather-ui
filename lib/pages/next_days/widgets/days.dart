import 'package:flutter/material.dart';
import 'package:weather_app_ui/constants/theme_data.dart';

// ignore_for_file: must_be_immutable
class Days extends StatefulWidget {
  bool isSelected;
  Days({super.key, required this.isSelected});

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: widget.isSelected ? Colors.white : secondaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/blowing.png'),
          ),
          Text(
            "28",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: widget.isSelected ? primaryColor : Colors.white,
                ),
          ),
          Text(
            "Sun",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: widget.isSelected ? primaryColor : Colors.white,
                ),
          )
        ],
      ),
    );
  }
}
