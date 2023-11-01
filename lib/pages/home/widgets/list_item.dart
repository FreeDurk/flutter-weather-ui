// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:weather_app_ui/constants/theme_data.dart';
import 'package:weather_app_ui/pages/home/models/seven_days_model.dart';

class ListItem extends StatefulWidget {
  SevenDaysModel item;
  bool isSelected;
  void Function() onTap;
  ListItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  var selectedDay = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: widget.isSelected ? secondaryColor : Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: secondaryColor.withOpacity(1),
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  spreadRadius: -5,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.item.time,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.isSelected
                      ? Colors.white
                      : greyOpacity.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(widget.item.icon),
              ),
              Text(
                widget.item.reading,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: widget.isSelected
                          ? Colors.white
                          : greyOpacity.withOpacity(0.5),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
