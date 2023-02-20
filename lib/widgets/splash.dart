import 'dart:async';

import 'package:flutter/material.dart';
import 'package:next_one/config/functions.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget(
      {super.key, this.time = 5, required this.child, required this.nextPage});
  final int time;
  final Widget child, nextPage;

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage, close: true);
    });
    return child;
  }
}
