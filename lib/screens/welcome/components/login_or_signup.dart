import 'package:flutter/material.dart';
import 'package:treaze_app/components/secondary_button.dart';
import 'package:treaze_app/screens/login/login_screen.dart';
import 'package:treaze_app/screens/sign_up/sign_up_screen.dart';

import '../../../constants.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SecondaryButton(
          text: "LOGIN", 
          margin: EdgeInsets.only(right: 25),
          press: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
        ),
        Text(
          "OR",
          style: TextStyle(color: kTextColor),
        ),
        SecondaryButton(
          text: "SIGN UP", 
          margin: EdgeInsets.only(left: 25),
          press: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
        )
      ],
    );
  }
}