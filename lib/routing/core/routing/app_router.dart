import 'package:chat_app/routing/core/routing/routes.dart';
import 'package:chat_app/routing/features/login/ui/login_screen.dart';
import 'package:chat_app/routing/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => SignupScreen());
    }
  }
}
