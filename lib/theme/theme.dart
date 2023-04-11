import 'package:flutter/material.dart';
import 'package:logisticsapp/theme/app_bar_theme.dart';
import 'package:logisticsapp/theme/palette.dart';
import 'package:logisticsapp/theme/text_button_theme.dart';
import 'package:logisticsapp/theme/texttheme.dart';

class KThemeData {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Palette.kBackgroundColor,
    brightness: Brightness.light,
    textTheme: KTextTheme.lightTextTheme,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(
            0xffc4c4c4,
          ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Color(
          0x50333333,
        ),
      )),
    ),
    textButtonTheme: KTextButtonTheme.lightTextButtonTheme,
    unselectedWidgetColor: const Color(
      0x50333333,
    ),
    shadowColor: const Color(
      0xffe6e6e6,
    ).withOpacity(
      0.5,
    ),
    // ignore: deprecated_member_use
    backgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Poppins',
  );
  static ThemeData darkTheme = ThemeData(
    primarySwatch: Palette.kBackgroundColor,
    brightness: Brightness.dark,
    textTheme: KTextTheme.darkTextTheme,
    appBarTheme: KAppBarTheme.darkAppBarTheme,
    textButtonTheme: KTextButtonTheme.DarkTextButtonTheme,
  );
}
