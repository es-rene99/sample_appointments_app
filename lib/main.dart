import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/screens/tutorial/tutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appointments',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        //background color as black
      ),
      home: const Tutorial(),
    );
  }
}
