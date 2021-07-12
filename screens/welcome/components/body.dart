import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:treaze_app/screens/home/home_screen.dart';
// import 'package:treaze_app/screens/splash/splash_screen.dart';

import 'background.dart';
import 'login_or_signup.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "TREAŹE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              letterSpacing: 6.0,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Text(
            "Are you ready for\nan adventure?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Londrina Solid",
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 40,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: size.height * 0.15),
          SvgPicture.asset(
            "assets/images/undraw-welcome.svg",
            height: size.height * 0.3,
          ),
          SizedBox(height: size.height * 0.06),
          RoundedButton(
            text: "GET STARTED",
            press: (){
              // Navigator.pushNamed(context, SplashScreen.routeName);
              Navigator.pushNamed(context, HomeScreen.routeName);
            }, 
          ),
          SizedBox(height: size.height * 0.01),
          LoginOrSignup()
        ],
      ),
    );
  }
}



