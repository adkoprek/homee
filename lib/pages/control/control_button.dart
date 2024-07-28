import 'package:flutter/material.dart';
import 'package:homee/pages/control/error_alert.dart';
import 'package:http/http.dart' as http;


class ControlButton extends StatelessWidget {
  const ControlButton({
    super.key,
    required this.endpoint,
    required this.icon,
    required this.color
  });

  final String endpoint;
  final IconData icon;
  final Color color;
  static bool busy = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (busy) return;
        busy = true;
        http.post(Uri.parse("http://192.168.178.55:8000/$endpoint")).then(
          (response) {
            if (response.statusCode != 200) {
              showDialog(
                context: context,
                builder: (context) => const ErrorAlert()
              );
            }
            busy = false;
          }
        ).catchError((Object error) {
          showDialog(
              context: context,
              builder: (context) => const ErrorAlert()
          );
          busy = false;
        });
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        side: const BorderSide(color: Colors.transparent),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.zero,
        minimumSize: const Size(40, 40),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Icon(icon)
    );
  }
}