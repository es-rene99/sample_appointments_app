import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

class DestinationButton extends StatelessWidget {
  final Widget destinationWidget;
  final String buttonText;
  const DestinationButton({
    super.key,
    required this.destinationWidget,
    required this.buttonText,
  });
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: 45.0,
              vertical: 15.0,
            ),
          ),
          child: Text(buttonText,
              style: const TextStyle(
                color: kSecondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => destinationWidget,
              ),
            );
          },
        );
      },
    );
  }
}
