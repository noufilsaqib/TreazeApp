import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'settings_field_icon.dart';

class SettingsFieldIconGender extends StatefulWidget {
  const SettingsFieldIconGender({
    Key key,
  }) : super(key: key);

  @override
  _SettingsFieldIconGenderState createState() => _SettingsFieldIconGenderState();
}

class _SettingsFieldIconGenderState extends State<SettingsFieldIconGender> {
  String gender = "Male";
  final List genders = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    return SettingsFieldIcon(
      text: gender, 
      icon: "assets/icons/md-gender-male-female.svg", 
      press: () {
        buildShowDialogGender(context);
      },
    );
  }

  Future<dynamic> buildShowDialogGender(BuildContext context) {
    return showDialog(
      context: context, 
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            height: getProportionateScreenHeight(300),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30),
                vertical: getProportionateScreenWidth(30),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Select Gender",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  SizedBox(
                    width: getProportionateScreenWidth(500),
                    height: getProportionateScreenWidth(50),
                    child: TextButton(
                      child: Text(
                        genders[0],
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(14),
                          letterSpacing: 1.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        setState(() {
                          gender = genders[0];
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Divider(thickness: 1),
                  SizedBox(
                    width: getProportionateScreenWidth(500),
                    height: getProportionateScreenWidth(50),
                    child: TextButton(
                      child: Text(
                        genders[1],
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(14),
                          letterSpacing: 1.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        setState(() {
                          gender = genders[1];
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Divider(thickness: 1),
                  SizedBox(
                    width: getProportionateScreenWidth(500),
                    height: getProportionateScreenWidth(50),
                    child: TextButton(
                      child: Text(
                        genders[2],
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(14),
                          letterSpacing: 1.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        setState(() {
                          gender = genders[2];
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}