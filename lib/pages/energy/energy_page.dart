import 'package:flutter/material.dart';

class EnergyPage extends StatefulWidget {
  const EnergyPage({super.key});

  @override
  State<EnergyPage> createState() => _EnergyPageStatus();
}

class _EnergyPageStatus extends State<EnergyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Nothing here yet")
        ),
      ),
    );
  }
}