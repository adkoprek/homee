import 'package:flutter/material.dart';
import 'package:homee/pages/control/control_button.dart';
import 'package:homee/theme/colors.dart';

class BugProtectionWidget extends StatelessWidget {
  const BugProtectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: getBugProtectionColor(),
                  width: 2
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Mosquito Net",
                      style: TextStyle(fontSize: 18)
                  ),
                  Row(
                    children: <Widget>[
                      ControlButton(
                        endpoint: "mosquito_net_up/",
                        icon: Icons.arrow_upward,
                        color: getBugProtectionColor(),
                      ),
                      const SizedBox(width: 10),
                      ControlButton(
                        endpoint: "mosquito_stop/",
                        icon: Icons.stop_circle,
                        color: getBugProtectionColor(),
                      ),
                      const SizedBox(width: 10),
                      ControlButton(
                        endpoint: "mosquito_net_down/",
                        icon: Icons.arrow_downward,
                        color: getBugProtectionColor(),
                      ),
                    ],
                  )
                ]
              ),
            ]
          ),
        )
      ],
    );
  }
}