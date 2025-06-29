import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 32, top: 32),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Hello,",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "\nSign in!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
