import 'package:chat_app/routing/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const ButtonApp({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(ColorsManager.lightRed),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 20)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
