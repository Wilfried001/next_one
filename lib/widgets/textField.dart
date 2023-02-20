import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';

class CtextField extends StatelessWidget {
  final Color? backgroundColor;
  final String hint;
  final double raduis;
  const CtextField(
      {super.key,
      this.backgroundColor,
      required this.hint,
      this.raduis = 15.0});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(
          color: Config.colors.hintColor,
          fontSize: 16,
        ),
        fillColor: backgroundColor ?? Config.colors.backgroundTextField,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(raduis),
        ),
      ),
    );
  }
}
