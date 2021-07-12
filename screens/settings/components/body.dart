import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'settings_field_dob.dart';
import 'settings_field_email.dart';
import 'settings_field_gender.dart';
import 'settings_field_password.dart';
import 'settings_field_switch.dart';
import 'settings_field_username.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenWidth(20)),
            OutlinedText(
              text: "Settings",
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "ACCOUNT",
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            SettingsFieldIconUsername(),
            SettingsFieldIconEmail(),
            SettingsFieldIconPassword(),
            SettingsFieldIconDOB(),
            SettingsFieldIconGender(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "SOCIAL",
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            SettingsFieldSwitch(
              text: "Facebook", 
              icon: "assets/icons/akar-facebookfill.svg", 
              press: () {},
            ),
            SettingsFieldSwitch(
              text: "Google", 
              icon: "assets/icons/akar-googlefill.svg", 
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}