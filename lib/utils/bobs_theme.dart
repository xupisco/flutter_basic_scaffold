import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xffc12a21);
}

class BobsTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      useMaterial3: true,

      // Colors
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        contrastLevel: 1,
      ),

      // Navigation Bar
      navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Colors.black.withAlpha(60),
          labelTextStyle:
              WidgetStateProperty.all(const TextStyle(color: Colors.white)),
        ),
    );
  }
}
