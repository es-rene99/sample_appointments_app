import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

class TutorialPageModel extends PageModel {
  final String image;
  final String text;

  TutorialPageModel({
    required this.image,
    required this.text,
    Widget? widget,
  }) : super(
          widget: widget ??
              SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 45.0,
                        vertical: 90.0,
                      ),
                      child: Image.asset(
                        image,
                        color: kPrimaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          text,
                          style: const TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        );
}
