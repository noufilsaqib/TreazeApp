import 'package:flutter/material.dart';
import 'package:treaze_app/routes.dart';
import 'package:treaze_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/services.dart';
import 'package:treaze_app/theme.dart';

void main() {
  // Removes the Android and iOS StatusBar (top+bottom)
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);

  // Disables Landscape Mode (Screen Rotation)
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Treaze App',
      theme: theme(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}

