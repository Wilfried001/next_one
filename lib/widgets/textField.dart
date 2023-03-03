import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';

class CtextField extends StatelessWidget {
  final Color? backgroundColor;
  final String hint;
  final double raduis;
  final Widget? prefixIcon;
  const CtextField(
      {super.key,
      this.backgroundColor,
      required this.hint,
      this.raduis = 15.0,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
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
