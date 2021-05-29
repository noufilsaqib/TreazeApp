import 'package:flutter/widgets.dart';
import 'package:treaze_app/screens/login/login_screen.dart';
import 'package:treaze_app/screens/sign_up/sign_up_screen.dart';
import 'package:treaze_app/screens/splash/splash_screen.dart';
import 'package:treaze_app/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};