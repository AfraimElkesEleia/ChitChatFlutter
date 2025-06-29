import 'package:chat_app/routing/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';

class TextAppField extends StatelessWidget {
  final String labelText;
  final Widget suffixIcon;
  final bool? visible;
  const TextAppField({
    super.key,
    required this.labelText,
    required this.suffixIcon,
    this.visible,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 25,
          color: ColorsManager.lightRed,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.lightRed),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: visible ?? false,
    );
  }
}
