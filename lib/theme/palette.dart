import 'package:flutter/material.dart';

class Palette {
  static MaterialColor kBackgroundColor = const MaterialColor(
      0xffF5F4F4FF, //0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn't  requiore a swatch.
      <int, Color>{
        50: Color(0xffe6e6e6), //10%
        100: Color(0xffcccccc), //20%
        200: Color(0xffb3b3b3), //30%
        300: Color(0xff999999), //40%
        400: Color(0xff808080), //50%
        500: Color(0xff666666), //60%
        600: Color(0xff4c4c4c), //70%
        700: Color(0xff333333), //80%
        800: Color(0xff191919), //90%
        900: Color(0xff000000), //100%
      });
}
