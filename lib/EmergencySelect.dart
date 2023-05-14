// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, depend_on_referenced_packages, camel_case_types

import 'package:flutter/material.dart';
import 'package:amb/Widgets/EmergencyType.dart';
import 'package:amb/constants/fontConstants.dart';

late String heading = 'Select Emergency';

class EmergencySelectionPage extends StatefulWidget {
  @override
  State<EmergencySelectionPage> createState() => _EmergencySelectionPageState();
}

class _EmergencySelectionPageState extends State<EmergencySelectionPage> {
  bool showBLS = true;
  bool showALS = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Text(heading, style: kHeadingFont),
            SizedBox(height: 100),

            // ALS Button

            showALS
                ? EmergencyType(
                    buttonText: 'Emergency Case (ALS)',
                    function: () {
                      setState(() {
                        heading = 'Type Of Emergency';
                        showBLS = false;
                        showALS = false;
                      });
                    },
                  )
                : SizedBox(height: 20),
            SizedBox(height: 40),

            // BLS Button

            showBLS
                ? EmergencyType(
                    buttonText: 'Regular Case (BLS)',
                    function: () {},
                  )
                : ALS_Category(),

            SizedBox(height: 40),
          ],
        ),
      )),
    );
  }
}

class ALS_Category extends StatelessWidget {
  const ALS_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmergencyType(
          buttonText: 'Accident',
          function: () {},
        ),
        SizedBox(height: 40),
        EmergencyType(
          buttonText: 'Patient',
          function: () {},
        ),
      ],
    );
  }
}
