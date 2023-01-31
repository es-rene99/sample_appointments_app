import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

class TimeDropdown extends StatefulWidget {
  final String text;
  final List<String> items;
  final String defaultValue;

  const TimeDropdown(
      {super.key,
      required this.text,
      required this.items,
      required this.defaultValue});

  @override
  State<TimeDropdown> createState() => _TimeDropdownState();
}

class _TimeDropdownState extends State<TimeDropdown> {
  String output = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(top: 30, right: 30),
        child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          // rounded borders
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: DropdownButton(
          value: output == "" ? widget.defaultValue : output,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          icon: const Icon(Icons.keyboard_arrow_down),
          items: widget.items.map((String times) {
            return DropdownMenuItem(
              value: times,
              child: Text(times),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              output = newValue!;
            });
          },
        ),
      ),
    ]);
  }
}
