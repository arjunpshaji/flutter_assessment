import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assessment/modules/app/my_app.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientation to portrait mode only.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent, statusBarColor: Colors.transparent));

  runApp(MyApp(navigatorKey: navigatorKey));
}
