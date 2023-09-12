import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color pageBackground = Color(0xFFFAFBFD);
  static const Color statusBarColor = Color(0xFF38686A);
  static const Color appBarColor = Color(0xFF38686A);
  static const Color appBarIconColor = Color(0xFFFFFFFF);
  static const Color appBarTextColor = Color(0xFFFFFFFF);

  static Color elevatedContainerColorOpacity = Colors.grey.withOpacity(0.45);

  static const MaterialColor colorPrimary =
      MaterialColor(0xFF4546F5, <int, Color>{
    50: Color(0xFFE9E9FE),
    100: Color(0xFFC7C8FC),
    200: Color(0xFFA2A3FA),
    300: Color(0xFF7D7EF8),
    400: Color(0xFF6162F7),
    500: Color(0xFF4546F5),
    600: Color(0xFF3E3FF4),
    700: Color(0xFF3637F2),
    800: Color(0xFF2E2FF0),
    900: Color(0xFF1F20EE),
  });
}
