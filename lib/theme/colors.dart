import 'dart:ui';

import 'package:flutter/material.dart';


const MaterialColor primaryColorDark = MaterialColor(
  0xff62738E,
  <int, Color>{
    50:  Color(0xff586880), //10%
    100: Color(0xff4e5c72), //20%
    200: Color(0xff455163), //30%
    300: Color(0xff3b4555), //40%
    400: Color(0xff313a47), //50%
    500: Color(0xff272e39), //60%
    600: Color(0xff1d222b), //70%
    700: Color(0xff14171c), //80%
    800: Color(0xff0a0b0e), //90%
    900: Color(0xff000000), //100%
  },
);

const MaterialColor primaryColor = MaterialColor(
  0xff62738E,
  <int, Color>{
    50:  Color(0xff728199), //10%
    100: Color(0xff818fa5), //20%
    200: Color(0xff919db0), //30%
    300: Color(0xffa1abbb), //40%
    400: Color(0xffb1b9c7), //50%
    500: Color(0xffc0c7d2), //60%
    600: Color(0xffd0d5dd), //70%
    700: Color(0xffe0e3e8), //80%
    800: Color(0xffeff1f4), //90%
    900: Color(0xffffffff), //100%
  },
);

const MaterialColor secondaryColorDark = MaterialColor(
  0xff8d9694,
  <int, Color>{
    50:  Color(0xff7f8785), //10%
    100: Color(0xff717876), //20%
    200: Color(0xff636968), //30%
    300: Color(0xff555a59), //40%
    400: Color(0xff474b4a), //50%
    500: Color(0xff383c3b), //60%
    600: Color(0xff2a2d2c), //70%
    700: Color(0xff1c1e1e), //80%
    800: Color(0xff0e0f0f), //90%
    900: Color(0xff000000), //100%
  },
);

const MaterialColor secondaryColor = MaterialColor(
  0xff8d9694,
  <int, Color>{
    50:  Color(0xff98a19f), //10%
    100: Color(0xffa4aba9), //20%
    200: Color(0xffafb6b4), //30%
    300: Color(0xffbbc0bf), //40%
    400: Color(0xffc6cbca), //50%
    500: Color(0xffd1d5d4), //60%
    600: Color(0xffdde0df), //70%
    700: Color(0xffe8eaea), //80%
    800: Color(0xfff4f5f4), //90%
    900: Color(0xffffffff), //100%
  },
);

Color getLightsColor() {
  return isDark() ? const Color(0xffc9e4de) : const Color(0xff7aad9b);
}

Color getSunProtectionColor() {
  return isDark() ? const Color(0xffdbcdf0) : const Color(0xffa28ab8);
}

Color getBugProtectionColor() {
  return isDark() ? const Color(0xfff7d9c4) : const Color(0xffb8967a);
}

Color getTextColor() {
  Brightness brightness = PlatformDispatcher.instance.platformBrightness;
  if (brightness == Brightness.dark)  { return Colors.white; }
  else                                { return Colors.black; }
}

Color getBackgroundColor() {
  Brightness brightness = PlatformDispatcher.instance.platformBrightness;
  if (brightness == Brightness.dark)  { return Colors.grey[900]!; }
  else                                { return Colors.grey[50]! ; }
}

bool isDark() {
  Brightness brightness = PlatformDispatcher.instance.platformBrightness;
  if (brightness == Brightness.dark)  { return true; }
  else                                { return false; }
}