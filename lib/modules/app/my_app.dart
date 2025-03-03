import 'package:flutter/material.dart';
import 'package:flutter_assessment/modules/login/view/login_page.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class MyApp extends StatefulWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  const MyApp({super.key, this.navigatorKey});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: widget.navigatorKey,
      theme: getAppTheme(context),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
