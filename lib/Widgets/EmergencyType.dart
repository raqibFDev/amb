// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../constants/fontConstants.dart';

class EmergencyType extends StatefulWidget {
  String buttonText;
  VoidCallback function;

  EmergencyType({required this.buttonText, required this.function});
  @override
  State<EmergencyType> createState() => _EmergencyTypeState();
}

class _EmergencyTypeState extends State<EmergencyType> {
  //constructor
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green, shape: StadiumBorder()),
        onPressed: () {
          widget.function();
        },
        child: Text(
          widget.buttonText,
          style: kButtonFont,
        ),
      ),
    );
  }
}
