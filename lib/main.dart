import 'package:flutter/material.dart';
import 'package:homee/pages/main_window.dart';
import 'package:homee/theme/system_ui.dart';
import 'package:homee/theme/theme_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    configureSystemUi();
    return MaterialApp(
      title: 'Homee',
      theme: theme,
      darkTheme: themeDark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
