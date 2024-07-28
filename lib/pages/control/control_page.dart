import 'package:flutter/material.dart';
import 'package:homee/pages/control/bug_protection_widget.dart';
import 'package:homee/pages/control/category_button.dart';
import 'package:homee/pages/control/lights_widget.dart';
import 'package:homee/pages/control/sun_protection_widget.dart';
import 'package:homee/theme/colors.dart';

enum Categories {
  light,
  sunProtection,
  bugProtection
}

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  Categories _category = Categories.light;

  final _keys = [
    GlobalKey<CategoryButtonState>(),
    GlobalKey<CategoryButtonState>(),
    GlobalKey<CategoryButtonState>()
  ];
  final _widgets = [
    const LightsWidget(),
    const SunProtectionWidget(),
    const BugProtectionWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Row(
                      children: <Widget>[
                        CategoryButton(
                          key: _keys[0],
                          icon: Icons.lightbulb_outline,
                          color: getLightsColor(),
                          onPressed: () => onCategoryChanged(0),
                          checked: true,
                        ),
                        const SizedBox(width: 20),
                        CategoryButton(
                          key: _keys[1],
                          icon: Icons.sunny,
                          color: getSunProtectionColor(),
                          onPressed: () => onCategoryChanged(1),
                        ),
                        const SizedBox(width: 20),
                        CategoryButton(
                          key: _keys[2],
                          icon: Icons.bug_report_outlined,
                          color: getBugProtectionColor(),
                          onPressed: () => onCategoryChanged(2),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              _widgets[_category.index]
            ],
          ),
        )
      )
    );
  }

  void onCategoryChanged(int newIndex) {
    setState(() {
      _category = Categories.values[newIndex];
      for (int i = 0; i < _keys.length; i++) {
        if (i != newIndex) _keys[i].currentState!.checked = false;
      }
    });
  }
}