import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle mentorsShrift = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.w400);

  static const TextStyle ercCard = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.bold);

  static const TextStyle sliverText = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w400);

  static const TextStyle sliverTextHeader = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 22,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 1.0),
          blurRadius: 2.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ],
      fontWeight: FontWeight.w400);
}

Color backgroundLight = Color(0xffffffff);
Color iconTint = Colors.purpleAccent;
Color navigationSelectionColor = Color(0xffffc107);
Color cardBGColor = Color(0xfffbfbfb);
TextStyle headerTextStyle = new TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
TextStyle subHeaderTextStyle =
    new TextStyle(fontSize: 16, color: Colors.grey[700]);
TextStyle bodyTextStyle = new TextStyle(fontSize: 14, color: Colors.black);
