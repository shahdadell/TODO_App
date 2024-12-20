import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color primaryLight = const Color(0xff5D9CEC);
  static Color backgroundLight = const Color(0xffDFECDB);
  static Color backgroundDark = const Color(0xff060E1E);
  static Color greenLight = const Color(0xff61E757);
  static Color grayColor = const Color(0xffC8C9CB);
  static Color whiteColors = const Color(0xffFFFFFF);
  static Color blackColors = const Color(0xff383838);
  static Color redColors = const Color(0xffEC4B4B);
  static Color darkColors = const Color(0xff141922);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryLight,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: whiteColors,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        color: blackColors,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: primaryLight,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: blackColors,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryLight,
      unselectedItemColor: blackColors,
      backgroundColor: Colors.transparent,
      showUnselectedLabels: false,
      elevation: 0,
      selectedLabelStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: primaryLight,
    ),
  );
}
