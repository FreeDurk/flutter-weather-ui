import 'package:flutter/material.dart';

import 'package:weather_app_ui/pages/home/models/seven_days_model.dart';
import 'package:weather_app_ui/pages/home/widgets/list_item.dart';

class NextSevenDays extends StatefulWidget {
  const NextSevenDays({super.key});

  @override
  State<NextSevenDays> createState() => _NextSevenDaysState();
}

class _NextSevenDaysState extends State<NextSevenDays> {
  int selectedDay = 0;
  @override
  Widget build(BuildContext context) {
    List<SevenDaysModel> items = [
      SevenDaysModel(
        time: '12:00',
        icon: 'assets/images/heavy-rain.png',
        reading: '23\u2103',
        isSelected: true,
      ),
      SevenDaysModel(
        time: '02:00',
        icon: 'assets/images/blowing.png',
        reading: '23\u2103',
        isSelected: false,
      ),
      SevenDaysModel(
        time: '04:00',
        icon: 'assets/images/cloud.png',
        reading: '23\u2103',
        isSelected: false,
      ),
      SevenDaysModel(
        time: '06:00',
        icon: 'assets/images/blowing.png',
        reading: '23\u2103',
        isSelected: false,
      ),
      SevenDaysModel(
        time: '08:00',
        icon: 'assets/images/heavy-rain.png',
        reading: '23\u2103',
        isSelected: false,
      ),
      SevenDaysModel(
        time: '10:00',
        icon: 'assets/images/heavy-rain.png',
        reading: '23\u2103',
        isSelected: false,
      ),
      SevenDaysModel(
        time: '12:00',
        icon: 'assets/images/heavy-rain.png',
        reading: '23\u2103',
        isSelected: false,
      ),
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        SevenDaysModel item = items[index];
        return GestureDetector(
          child: ListItem(
            onTap: () {
              setState(() {
                selectedDay = index;
              });
            },
            item: item,
            isSelected: selectedDay == index ? true : false,
          ),
        );
      },
    );
  }
}
