import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

var mainAppBar = AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        kMainLogo,
        width: 28,
      ),
    ],
  ),
  automaticallyImplyLeading: false,
  backgroundColor: Colors.white,
);

var mainHeader = Column(
  children: [
    Container(
      margin: const EdgeInsets.only(top: 30, right: 30, left: 30),
      child: const Center(
        child: Text(
          kMainHeaderText,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ],
);
