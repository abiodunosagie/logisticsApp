import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    //headline1
    displayLarge: GoogleFonts.poppins(
      color: const Color(
        0xff111111,
      ),
      fontSize: 45,
      fontWeight: FontWeight.bold,
    ),
    //headline2
    displayMedium: GoogleFonts.poppins(
      color: const Color(
        0xff111111,
      ),
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    //headline3
    displaySmall: GoogleFonts.poppins(
      color: const Color(
        0xff111111,
      ),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    //headline4
    headlineMedium: GoogleFonts.poppins(
      color: const Color(
        0xff111111,
      ),
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    //headline5
    headlineSmall: GoogleFonts.poppins(
      color: const Color(
        0xff111111,
      ),
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    //headline6
    titleLarge: GoogleFonts.poppins(
      color: const Color(
        0x50333333,
      ),
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
    //bodytext1
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
    //bodytext2
    bodyMedium: GoogleFonts.poppins(
      color: const Color(
        0xff111111,
      ),
      fontSize: 19,
      fontWeight: FontWeight.bold,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    //headline1
    displayLarge: GoogleFonts.poppins(
      color: const Color(
        0xffffffff,
      ),
      fontSize: 34,
      fontWeight: FontWeight.bold,
    ),
    //headline2
    displayMedium: GoogleFonts.poppins(
      color: const Color(
        0xffffffff,
      ),
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    //headline3
    displaySmall: GoogleFonts.poppins(
      color: const Color(
        0xffffffff,
      ),
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
    //headline4
    headlineMedium: GoogleFonts.poppins(
      color: const Color(
        0xffffffff,
      ),
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    //headline5
    headlineSmall: GoogleFonts.poppins(
      color: const Color(
        0xffffffff,
      ),
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
    //headline6
    titleLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    //bodytext1
    bodyLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
    //bodytext2
    bodyMedium: GoogleFonts.poppins(
      color: const Color(
        0xffffffff,
      ),
      fontSize: 9,
      fontWeight: FontWeight.bold,
    ),
  );
}
