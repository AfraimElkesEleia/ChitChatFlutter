import 'package:chat_app/routing/core/helper/spacing.dart';
import 'package:chat_app/routing/core/widgets/button_app.dart';
import 'package:chat_app/routing/core/widgets/text_app_field.dart';
import 'package:flutter/material.dart';

class BottomTextFields extends StatefulWidget {
  const BottomTextFields({super.key});

  @override
  State<BottomTextFields> createState() => _BottomTextFieldsState();
}

class _BottomTextFieldsState extends State<BottomTextFields> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(height: 70),
                TextAppField(
                  labelText: "Gmail",
                  suffixIcon: Icon(Icons.done_rounded),
                ),
                verticalSpace(height: 20),
                TextAppField(
                  visible: !isVisible,
                  labelText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                      isVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                verticalSpace(height: 30),
                TextAppField(
                  visible: !isVisible,
                  labelText: "Confirm Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                      isVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                verticalSpace(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Signup Password?"),
                ),
                verticalSpace(height: 20),
                ButtonApp(buttonText: "Sign up", onPressed: () {}),
                verticalSpace(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
