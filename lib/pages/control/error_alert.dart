import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homee/theme/system_ui.dart';
import 'package:http/http.dart';

class ErrorAlert extends StatelessWidget {
  const ErrorAlert({super.key});

  @override
  Widget build(BuildContext context) {
    configureSystemUiForOverlay();

    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      iconPadding: const EdgeInsets.all(20),
      icon: SvgPicture.asset("assets/svg/error.svg",
        width: 250,
        height: 250,
      ),
      titlePadding: const EdgeInsets.all(10),
      title: const Text("Something went wrong!"),
      titleTextStyle: const TextStyle(fontSize: 24),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            configureSystemUi();
          },
          child: const Text("Ok")
        )
      ],
    );
  }
}