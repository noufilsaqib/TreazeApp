import 'package:flutter/material.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:treaze_app/screens/login/login_screen.dart';
import 'package:treaze_app/screens/sign_up/sign_up_screen.dart';

import '../../../constants.dart';

class LoginSignupSplash extends StatelessWidget {
  const LoginSignupSplash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RoundedButton(
          text: "LOGIN",
          color: Colors.transparent,
          textColor: kPrimaryColor,
          borderColor: kPrimaryColor,
          width: 0.4,
          press: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
        ),
        RoundedButton(
          text: "SIGN UP",
          width: 0.4,
          press: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
        ),
      ],
    );
  }
}