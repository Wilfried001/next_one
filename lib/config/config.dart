import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final asset = _Asset();
}

class _Color {
  final primaryColor = Color(0xFF1C6A3B);
  final secondaryColor = Color(0xFFE0DD3A);
  final blackColor = Color(0xFF121314);
  final hoverColor = Color(0xFF1A963B);
  final whithColor = Color(0xffFFFFFF);
  final textColor = Color(0xff012D12);
  final textColorFiltre = Color.fromARGB(195, 1, 45, 18);
  final backgroundTextField = Color.fromARGB(45, 28, 106, 59);
  final btnColor2 = Color.fromARGB(158, 182, 182, 182);
  final hintColor = Color.fromARGB(232, 1, 45, 18);
}

class _Asset {
  final logo = "assets/images/next_logo.png";
  final next_one_car = "assets/images/next_one_car.png";
  final google = "assets/images/google.png";
  final linkdin = "assets/images/linkdin.png";
  final undraw_terms = "assets/images/undraw_terms.svg";
}

class RadioTitleListeItem {
  String value;
  bool isSelectedRadio;
  RadioTitleListeItem(this.value, this.isSelectedRadio);
}
