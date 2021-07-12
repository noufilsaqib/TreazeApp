import 'package:flutter/material.dart';
import 'package:treaze_app/screens/forgot_password/forgot_password_screen.dart';

import 'settings_field_icon.dart';

class SettingsFieldIconPassword extends StatelessWidget {
  const SettingsFieldIconPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsFieldIcon(
      text: "●●●●●●●●●●", 
      icon: "assets/icons/akar-lock.svg", 
      press: () {
        Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
      },
    );
  }
}