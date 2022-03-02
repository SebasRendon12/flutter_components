import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primaryColor)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0));
}
