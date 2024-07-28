import 'package:flutter/material.dart';
import 'package:homee/pages/control/control_button.dart';
import 'package:homee/theme/colors.dart';


class SunProtectionWidget extends StatelessWidget {
  const SunProtectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        AwningsWidget()
      ]
    );
  }
}

class AwningsWidget extends StatefulWidget {
  const AwningsWidget({super.key});

  @override
  State<AwningsWidget> createState() => _AwningsWidgetState();
}

class _AwningsWidgetState extends State<AwningsWidget> {
  bool both = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
              color: getSunProtectionColor(),
              width: 2
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(both ? "Both" : "Big Awing",
                  style: const TextStyle(fontSize: 18)
              ),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      setState(() { both = !both; });
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: getSunProtectionColor(),
                      side: const BorderSide(color: Colors.transparent),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(40, 40),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Icon(Icons.link)
                  ),
                  const SizedBox(width: 10),
                  ControlButton(
                    endpoint: both ? "awnings_both_up/" : "awnings_big_up/",
                    icon: Icons.arrow_upward,
                    color: getSunProtectionColor(),
                  ),
                  const SizedBox(width: 10),
                  ControlButton(
                    endpoint: both ? "awnings_both_stop/" : "awnings_big_stop/",
                    icon: Icons.stop_circle,
                    color: getSunProtectionColor(),
                  ),
                  const SizedBox(width: 10),
                  ControlButton(
                    endpoint: both ? "awnings_both_down/" : "awnings_big_down/",
                    icon: Icons.arrow_downward,
                    color: getSunProtectionColor(),
                  ),
                ],
              )
            ]
          ),
          SizedBox(height: !both ? 10 : 0),
          !both ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Small Awing",
                  style: TextStyle(fontSize: 18)
              ),
              Row(
                children: <Widget>[
                  ControlButton(
                    endpoint: "awnings_small_up/",
                    icon: Icons.arrow_upward,
                    color: getSunProtectionColor(),
                  ),
                  const SizedBox(width: 10),
                  ControlButton(
                    endpoint: "awnings_small_stop/",
                    icon: Icons.stop_circle,
                    color: getSunProtectionColor(),
                  ),
                  const SizedBox(width: 10),
                  ControlButton(
                    endpoint: "awnings_small_down/",
                    icon: Icons.arrow_downward,
                    color: getSunProtectionColor(),
                  ),
              ],
            )
          ]
          ) : const SizedBox(),
        ]
      ),
    );
  }
}