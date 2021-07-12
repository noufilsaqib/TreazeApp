import 'package:flutter/material.dart';
import 'package:treaze_app/constants.dart';

import '../../../size_config.dart';
import '../../../components/background.dart';
import 'reset_password_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "Reset",
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
                      "PASSWORD",
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
                Text(
                  "Your new password must be different \nfrom your previously used passwords.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                ResetPasswordForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}