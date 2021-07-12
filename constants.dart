import 'package:flutter/material.dart';

// Colors
const kPrimaryColor = Color(0xFFFFCC00);
const kPrimaryLightColor = Color(0xFFFFE680);
const kSecondaryColor = Color(0xFF2C2C2C);
const kTextColor = Color(0xFF999999);

// Gradients
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFE680), Color(0xFFFFCC00)],
);
const kSecondaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFDDDDDD), Color(0xFF999999)],
);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp nameValidatorRegExp = RegExp(r"[a-zA-Z]");
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please enter your name";
const String kInvalidNameError = "Please enter valid name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";
const String kCodeNullError = "Please enter the referral code";

// Input Field Styling
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}