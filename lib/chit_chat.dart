import 'package:chat_app/routing/core/routing/app_router.dart';
import 'package:chat_app/routing/core/routing/routes.dart';
import 'package:flutter/material.dart';

class ChitChat extends StatelessWidget {
  final AppRouter appRouter;
  const ChitChat({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerate,
      initialRoute: Routes.loginScreen,
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}
