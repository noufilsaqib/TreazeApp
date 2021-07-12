import 'package:flutter/material.dart';
import 'package:treaze_app/components/background.dart';
import 'package:treaze_app/components/no_account_text.dart';
import 'package:treaze_app/components/or_divider.dart';
import 'package:treaze_app/components/social_card.dart';
import 'package:treaze_app/screens/login/login_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        "Hello,",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(24),
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              color: kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        "SIGN UP!",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Londrina Solid",
                          fontSize: getProportionateScreenWidth(64),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4.0,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              color: kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  NoAccountText(
                    login: false,
                    press: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  OrDivider(),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/core-cib-facebook-f.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/akar-google.svg",
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}