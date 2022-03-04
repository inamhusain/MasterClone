import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
      primaryColor: PrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: ContentColorLightTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: ContentColorLightTheme,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      colorScheme: ColorScheme.light(
        primary: PrimaryColor,
        secondary: SecondaryColor,
        error: ErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: ContentColorLightTheme,
        unselectedItemColor: ContentColorLightTheme.withOpacity(0.5),
        backgroundColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: PrimaryColor),
        selectedLabelStyle: TextStyle(color: PrimaryColor),
      ),
    );
  }

  static ThemeData darkThemeData(BuildContext context) {
    return ThemeData.dark().copyWith(
      primaryColor: PrimaryColor,
      scaffoldBackgroundColor: ContentColorLightTheme,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: ContentColorDarkTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: ContentColorDarkTheme,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      colorScheme: ColorScheme.dark().copyWith(
        primary: PrimaryColor,
        secondary: SecondaryColor,
        error: ErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: ContentColorDarkTheme,
        unselectedItemColor: ContentColorDarkTheme.withOpacity(0.32),
        backgroundColor: Colors.white,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedIconTheme: IconThemeData(color: PrimaryColor),
        selectedLabelStyle: TextStyle(color: PrimaryColor),
      ),
    );
  }

  static AppBarTheme appBarTheme =
      AppBarTheme(centerTitle: false, elevation: 0);

  static Color PrimaryColor = Color(0xFF00BF6D);
  static Color SecondaryColor = Color(0xFFFE9901);
  static Color ContentColorLightTheme = Color(0xFF1D1D35);
  static Color ContentColorDarkTheme = Color(0xFFF5FCF9);
  static Color WarninngColor = Color(0xFFF3BB1C);
  static Color ErrorColor = Color(0xFFF03738);
}
