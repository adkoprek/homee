import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homee/theme/colors.dart';


void configureSystemUi() {
  if (isDark()) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.grey.shade900,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light
        )
    );
  }
  else {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Colors.grey.shade50,
            systemNavigationBarIconBrightness: Brightness.dark
        )
    );
  }
}

void configureSystemUiForOverlay() {
  if (isDark()) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: Color(0xff0f0f0f))
    );
  }
  else {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: Color(0xff737373))
    );
  }
}