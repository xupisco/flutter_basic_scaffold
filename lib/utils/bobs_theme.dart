import 'package:flutter/material.dart';

class BobsColors {
  static const primary = Color(0xffc12a21);
}

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    surface: Colors.grey.shade100,
    primary: BobsColors.primary
  ),

  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: Colors.black.withAlpha(60),
    labelTextStyle:
        WidgetStateProperty.all(const TextStyle(color: Colors.white)),
  ),
);

ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(color: BobsColors.primary),
  colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      surface: Colors.grey.shade900,
      primary: BobsColors.primary,
      onPrimary: Colors.white
  ),

  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: Colors.black.withAlpha(60),
    labelTextStyle:
        WidgetStateProperty.all(const TextStyle(color: Colors.white)),
  ),
);
