import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

class PersonalFormField extends StatelessWidget {
  final String text;
  final Widget widget;
  const PersonalFormField({
    super.key,
    required this.text,
    required this.widget,
  });
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              color: kSecondaryColor,
              child: widget,
            ),
          ],
        );
      },
    );
  }
}
