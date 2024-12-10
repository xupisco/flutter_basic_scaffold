import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BobsColors {
  static const primary = Color(0xffc12a21);
}

ThemeData customTheme(ColorScheme colorScheme) {
  return ThemeData(
      appBarTheme:AppBarTheme(
        color: BobsColors.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.robotoSlab().fontFamily,
          fontSize: 24, fontWeight: FontWeight.bold
        ),
      ),
      fontFamily: GoogleFonts.robotoSlab().fontFamily,
      colorScheme: colorScheme,
      navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Colors.black.withAlpha(60),
          labelTextStyle:
              WidgetStateProperty.all(const TextStyle(
                color: Colors.white,
                fontSize: 16)))
  );
}

ThemeData lightTheme = customTheme(ColorScheme.light(
    brightness: Brightness.light,
    surface: Colors.grey.shade100,
    primary: BobsColors.primary));

ThemeData darkTheme = customTheme(ColorScheme.dark(
    brightness: Brightness.dark,
    surface: Colors.grey.shade900,
    primary: BobsColors.primary,
    onPrimary: Colors.white));
