import 'package:chat_app/routing/core/helper/spacing.dart';
import 'package:chat_app/routing/core/theme/colors_manager.dart';
import 'package:chat_app/routing/features/signup/ui/widgets/bottom_text_fields.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              verticalSpace(height: 20),
              BottomTextFields()],
          ),
        ),
      ),
    );
  }
}
