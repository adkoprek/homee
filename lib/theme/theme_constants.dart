import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homee/theme/colors.dart';


ThemeData theme = ThemeData(
    colorSchemeSeed: primaryColor,
    brightness: Brightness.light,
    iconTheme: const IconThemeData(
        color: Colors.black
    ),
    scaffoldBackgroundColor: Colors.grey[50],
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey.shade50,
      unselectedIconTheme: const IconThemeData(
          color: Colors.black
      ),
    ),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: Colors.black
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        )
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black
          )
      ),
      hoverColor: primaryColor,
      floatingLabelStyle: TextStyle(
        color: Colors.black,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.grey[50],
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.grey[600]!),
            borderRadius: BorderRadius.circular(15)
        ),
        enableFeedback: false,
        hoverElevation: 0,
        elevation: 2
    )
);

ThemeData themeDark = ThemeData(
  colorSchemeSeed: primaryColorDark,
  scaffoldBackgroundColor: Colors.grey[900],
  brightness: Brightness.dark,
  iconTheme: const IconThemeData(
      color: Colors.white
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey[900],
    unselectedIconTheme: const IconThemeData(
        color: Colors.white
    ),
  ),
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.white
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      )
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Colors.white,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.white
        )
    ),
    hoverColor: primaryColorDark,
    floatingLabelStyle: TextStyle(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1,
              color: Colors.grey[500]!
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      enableFeedback: false,
      hoverElevation: 0,
      elevation: 3
  ),
);