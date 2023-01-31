import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';
import 'package:sample_appointments_app_flutter/shared/destination_button.dart';

class DestinationsFooter extends StatelessWidget {
  final Widget previousDestination;
  final Widget nextDestination;
  const DestinationsFooter({
    super.key,
    required this.nextDestination,
    required this.previousDestination,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Transform.scale(
            scale: 0.8,
            child: DestinationButton(
                destinationWidget: previousDestination,
                buttonText: kPreviousBtnText),
          ),
          Transform.scale(
              scale: 0.8,
              child: DestinationButton(
                  destinationWidget: nextDestination,
                  buttonText: kContinueBtnText)),
        ],
      ),
    );
  }
}
