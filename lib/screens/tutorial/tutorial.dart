import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:sample_appointments_app_flutter/screens/schedule_date/schedule_date.dart';
import 'package:sample_appointments_app_flutter/shared/destination_button.dart';
import 'package:sample_appointments_app_flutter/screens/tutorial/shared/tutorial_page_model.dart';
import 'package:sample_appointments_app_flutter/shared/constants.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    TutorialPageModel(
        image: "assets/images/tutorial_1.png", text: kTutorialText1),
    TutorialPageModel(
        image: "assets/images/tutorial_2.png", text: kTutorialText2),
    TutorialPageModel(
        image: "assets/images/tutorial_3.png", text: kTutorialText3),
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        startPageIndex: 0,
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.0,
                color: background,
              ),
            ),
            child: ColoredBox(
              color: kSecondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIndicator(
                      netDragPercent: dragDistance,
                      pagesLength: pagesLength,
                      indicator: Indicator(
                        indicatorDesign: IndicatorDesign.line(
                          lineDesign: LineDesign(
                            lineType: DesignType.line_uniform,
                          ),
                        ),
                      ),
                    ),
                    const DestinationButton(
                      destinationWidget: ScheduleDate(),
                      buttonText: kContinueBtnText,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
