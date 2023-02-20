import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';

class Ctitle extends StatelessWidget {
  final String title;
  final double size;
  const Ctitle({super.key, required this.title, this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Config.colors.textColor,
        fontSize: size,
        fontFamily: 'roboto',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
