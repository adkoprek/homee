import 'package:flutter/material.dart';
import 'package:homee/pages/control/control_page.dart';
import 'package:homee/pages/energy/energy_page.dart';
import 'package:homee/pages/status/status_page.dart';
import 'package:homee/theme/colors.dart';
import 'package:homee/theme/theme_constants.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 1;
  static const List<Widget> _pages = [
    StatusPage(),
    ControlPage(),
    EnergyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isDark() ? Colors.grey[600]! : Colors.grey[500]!,
              width: 0.4,
            )
          )
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory,
            hoverColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home,
                  color: primaryColor,
                  size: 30
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_remote_outlined),
                activeIcon: Icon(Icons.settings_remote,
                  color: primaryColor,
                  size: 30
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.power_outlined),
                activeIcon: Icon(Icons.power,
                  color: primaryColor,
                  size: 30
                ),
                label: ''
              ),
            ],
            currentIndex: _selectedIndex,
            enableFeedback: false,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            elevation: 0,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            type: BottomNavigationBarType.fixed,
            onTap: (int newIndex) {
              setState(() { _selectedIndex = newIndex; });
            },
          ),
        )
      ),
      body: _pages[_selectedIndex],
    );
  }
}
