import 'package:flutter/material.dart';
import 'package:sample_appointments_app_flutter/screens/personal_info_form/shared/personal_form_field.dart';
import 'package:sample_appointments_app_flutter/screens/schedule_date/schedule_date.dart';
import 'package:sample_appointments_app_flutter/screens/success_page.dart';
import 'package:sample_appointments_app_flutter/shared/components.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';
import 'package:sample_appointments_app_flutter/shared/destinations_footer.dart';

class PersonalInfoForm extends StatefulWidget {
  const PersonalInfoForm({super.key});

  @override
  State<PersonalInfoForm> createState() => _PersonalInfoFormState();
}

class _PersonalInfoFormState extends State<PersonalInfoForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              mainHeader,
              Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  child: const Text('Please enter your personal information',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: kPrimaryColor))),
              const PersonalFormField(
                  text: kPersonalInfoName,
                  widget: TextField(
                    style: TextStyle(color: kPrimaryColor),
                    keyboardType: TextInputType.name,
                  )),
              const PersonalFormField(
                  text: kPersonalInfoPhone,
                  widget: TextField(
                    style: TextStyle(color: kPrimaryColor),
                    keyboardType: TextInputType.number,
                  )),
              const PersonalFormField(
                text: kPersonalInfoPhone,
                widget: TextField(
                  style: TextStyle(color: kPrimaryColor),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const PersonalFormField(
                  text: kPersonalInfoNotes,
                  widget: TextField(
                    style: TextStyle(color: kPrimaryColor),
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const DestinationsFooter(
                    nextDestination: SuccessPage(),
                    previousDestination: ScheduleDate(),
                  )),
            ],
          ),
        ));
  }
}
