import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFb0a2a2).withOpacity(1),
                        offset: const Offset(3, 2),
                        blurRadius: 14,
                        spreadRadius: -3,
                      )
                    ]),
                child: Image.asset('assets/images/menu.png'),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFb0a2a2).withOpacity(1),
                        offset: const Offset(3, 2),
                        blurRadius: 14,
                        spreadRadius: -3,
                      )
                    ]),
                child: Image.asset('assets/images/bell.png'),
              )
            ],
          ),
          Container(
            // padding: const EdgeInsets.all(10),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFb0a2a2).withOpacity(1),
                    offset: const Offset(3, 2),
                    blurRadius: 14,
                    spreadRadius: -3,
                  )
                ]),
            child: Image.asset('assets/images/cat.png'),
          ),
        ],
      ),
    );
  }
}
