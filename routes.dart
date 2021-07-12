import 'package:flutter/widgets.dart';
import 'package:treaze_app/screens/chat/chat_screen.dart';
import 'package:treaze_app/screens/faq/faq_screen.dart';
import 'package:treaze_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:treaze_app/screens/game/game_screen.dart';
import 'package:treaze_app/screens/help/help_screen.dart';
import 'package:treaze_app/screens/hints/hints_screen.dart';
import 'package:treaze_app/screens/home/home_screen.dart';
import 'package:treaze_app/screens/hunt_results/hunt_results_screen.dart';
import 'package:treaze_app/screens/login/login_screen.dart';
import 'package:treaze_app/screens/profile/profile_screen.dart';
import 'package:treaze_app/screens/refer_friends/refer_friends_screen.dart';
import 'package:treaze_app/screens/reset_password/reset_password_screen.dart';
import 'package:treaze_app/screens/settings/settings_screen.dart';
import 'package:treaze_app/screens/sign_up/sign_up_screen.dart';
import 'package:treaze_app/screens/splash/splash_screen.dart';
import 'package:treaze_app/screens/terms_and_policy/terms_and_policy_screen.dart';
import 'package:treaze_app/screens/treasure_hunt_info/treasure_hunt_info_screen.dart';
import 'package:treaze_app/screens/treasure_hunts/treasure_hunts_screen.dart';
import 'package:treaze_app/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  TreasureHuntsScreen.routeName: (context) => TreasureHuntsScreen(),
  HintsScreen.routeName: (context) => HintsScreen(),
  TermsAndPolicyScreen.routeName: (context) => TermsAndPolicyScreen(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  ReferFriendsScreen.routeName: (context) => ReferFriendsScreen(),
  HelpScreen.routeName: (context) => HelpScreen(),
  FAQScreen.routeName: (context) => FAQScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  TreasureHuntInfoScreen.routeName: (context) => TreasureHuntInfoScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  HuntResultsScreen.routeName: (context) => HuntResultsScreen(),
  GameScreen.routeName: (context) => GameScreen(),
};

// Treasure Hunt Game page(s) --- IN PROGRESS
