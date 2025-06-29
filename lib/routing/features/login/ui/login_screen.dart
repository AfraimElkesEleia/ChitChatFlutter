import 'package:chat_app/routing/core/helper/spacing.dart';
import 'package:chat_app/routing/core/theme/colors_manager.dart';
import 'package:chat_app/routing/features/login/ui/widgets/bottom_text_fields.dart';
import 'package:chat_app/routing/features/login/ui/widgets/hello_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorsManager.lightRed, ColorsManager.darkRed],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HelloText(),
              verticalSpace(height: 60),
              BottomTextFields(),
            ],
          ),
        ),
      ),
    );
  }
}
