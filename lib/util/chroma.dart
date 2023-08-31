import 'package:flutter/material.dart';

class Chroma {
  static const Color mainColor = Color.fromRGBO(179, 88, 253, 1.0);
  static const Color firstSuggestionBoxColor = Color.fromRGBO(
      231, 245, 207, 1.0);
  static const Color secondSuggestionBoxColor =
  Color.fromRGBO(255, 221, 142, 1.0);
  static const Color thirdSuggestionBoxColor = Color.fromRGBO(162, 238, 239, 1);
  static const Color assistantCircleColor = Color.fromRGBO(209, 243, 249, 1);
  static const Color borderColor = Color.fromRGBO(200, 200, 200, 1);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Gradient gradient = RadialGradient(
    colors: [Color(0xffffffff), Color(0xffd100f5)],
    stops: [0, 1],
    center: Alignment.center,
  );
}