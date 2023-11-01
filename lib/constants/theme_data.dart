import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0XFFAECDFF);
const Color secondaryColor = Color(0XFFB0A4FF);
Color blkOpacity = Colors.black.withOpacity(0.5);
Color greyOpacity = Colors.grey.shade800;

// Device Size
FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
Size size = view.physicalSize;
double deviceWidth = size.width;
double deviceHeight = size.height;

OutlineInputBorder outlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(
    color: greyOpacity,
  ),
);

ThemeData themeData = ThemeData(
  primaryColor: primaryColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  scaffoldBackgroundColor: const Color(0XFFFFFFFF),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50,
      color: primaryColor,
      fontWeight: FontWeight.w900,
    ),
    displayMedium: TextStyle(fontSize: 18),
    displaySmall: TextStyle(fontSize: 14),
    titleLarge: TextStyle(fontSize: 36),
    titleMedium: TextStyle(fontSize: 26),
    titleSmall: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 10),
    bodyMedium: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w800, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 26),
  ),
);
