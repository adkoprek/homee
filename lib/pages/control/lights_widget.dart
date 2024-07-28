import 'package:flutter/material.dart';
import 'package:homee/pages/control/control_button.dart';
import 'package:homee/theme/colors.dart';

class LightsWidget extends StatelessWidget {
  const LightsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: getLightsColor(),
              width: 2
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Terrace Lights",
                style: TextStyle(fontSize: 18)
              ),
              Row(
                children: <Widget>[
                  ControlButton(
                    endpoint: "taras_on/",
                    icon: Icons.flashlight_on,
                    color: getLightsColor(),
                  ),
                  const SizedBox(width: 10),
                  ControlButton(
                    endpoint: "taras_off/",
                    icon: Icons.flashlight_off,
                    color: getLightsColor(),
                  ),
                ],
              )
            ]
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: getLightsColor(),
                  width: 2
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Bedroom Light",
                        style: TextStyle(fontSize: 18)
                    ),
                    Row(
                      children: <Widget>[
                        ControlButton(
                            endpoint: "bedroom_led_on/",
                            icon: Icons.flashlight_on,
                          color: getLightsColor(),
                        ),
                        const SizedBox(width: 10),
                        ControlButton(
                            endpoint: "bedroom_led_brighter/",
                            icon: Icons.brightness_high,
                          color: getLightsColor(),
                        ),
                        const SizedBox(width: 10),
                        ControlButton(
                            endpoint: "bedroom_led_cold/",
                            icon: Icons.ac_unit,
                          color: getLightsColor(),
                        ),
                      ],
                    )
                  ]
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(""),
                  Row(
                    children: <Widget>[
                      ControlButton(
                          endpoint: "bedroom_led_off/",
                          icon: Icons.flashlight_off,
                        color: getLightsColor(),
                      ),
                      const SizedBox(width: 10),
                      ControlButton(
                          endpoint: "bedroom_led_darker/",
                          icon: Icons.brightness_3,
                        color: getLightsColor(),
                      ),
                      const SizedBox(width: 10),
                      ControlButton(
                          endpoint: "bedroom_led_warm/",
                          icon: Icons.local_fire_department,
                        color: getLightsColor(),
                      ),
                    ],
                  )
                ]
              ),
            ],
          )
        )
      ]
    );
  }
}