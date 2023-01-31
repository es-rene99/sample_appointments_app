import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/shared/components.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // big purple text
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text(
                      kSuccessMsg,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ]));
  }
}
