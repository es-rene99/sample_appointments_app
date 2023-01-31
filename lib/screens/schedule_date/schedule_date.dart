import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/screens/personal_info_form/personal_info_form.dart';
import 'package:sample_appointments_app_flutter/screens/schedule_date/shared/time_dropdown.dart';
import 'package:sample_appointments_app_flutter/screens/tutorial/tutorial.dart';
import 'package:sample_appointments_app_flutter/shared/components.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';
import 'package:sample_appointments_app_flutter/shared/destinations_footer.dart';

class ScheduleDate extends StatefulWidget {
  const ScheduleDate({super.key});

  @override
  State<ScheduleDate> createState() => _ScheduleDateState();
}

class _ScheduleDateState extends State<ScheduleDate> {
  var availableTimeList = [
    '8:00 am',
    '9:00 am',
    '10:00 am',
    '11:00 am',
    '12:00 pm',
    '1:00 pm',
    '2:00 pm',
    '3:00 pm',
    '4:00 pm',
    '5:00 pm',
    '6:00 pm',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar,
        body: Column(children: [
          mainHeader,
          Container(
            margin: const EdgeInsets.only(top: 30, right: 30, left: 30),
            child: const Text(
              kScheduleDateIndicationTextA,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                          ),
                          child: DateTimeFormField(
                            dateTextStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              locale: Locale('es', 'ES'),
                            ),
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.black45),
                              errorStyle: TextStyle(color: Colors.redAccent),
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.event_note),
                            ),
                            mode: DateTimeFieldPickerMode.date,
                            firstDate:
                                DateTime.now().add(const Duration(days: 2)),
                            lastDate:
                                DateTime.now().add(const Duration(days: 40)),
                            initialDate:
                                DateTime.now().add(const Duration(days: 2)),
                            autovalidateMode: AutovalidateMode.always,
                            validator: (DateTime? e) => (e?.day ?? 0) == 1
                                ? 'Please not the first day'
                                : null,
                            onDateSelected: (DateTime value) {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TimeDropdown(
                      text: kScheduleDateIndicationTextB,
                      items: availableTimeList,
                      defaultValue: availableTimeList.first,
                    ),
                    TimeDropdown(
                      text: kScheduleDateIndicationTextC,
                      items: availableTimeList,
                      defaultValue: availableTimeList.last,
                    ),
                  ],
                ),
                const DestinationsFooter(
                  nextDestination: PersonalInfoForm(),
                  previousDestination: Tutorial(),
                )
              ],
            ),
          )
        ]));
  }
}
