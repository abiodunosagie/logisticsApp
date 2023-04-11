// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class KTextButtonTheme {
  static TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        Colors.black,
      ),
    ),
  );

  static TextButtonThemeData DarkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        Colors.black,
      ),
    ),
  );
}
