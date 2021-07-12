import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/components/custom_switch.dart';
import 'package:treaze_app/components/form_error.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:treaze_app/components/unfocused_form_field_suffix_icon.dart';
import 'package:treaze_app/screens/home/home_screen.dart';
import 'package:treaze_app/screens/terms_and_policy/terms_and_policy_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  bool passwordObscured = false;
  
  final List<String> errors = [];

  void initState() {
    super.initState();
    passwordObscured = false;
  }

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Container(
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                buildPasswordFormField(),
                UnfocusedFormFieldSuffixIcon(
                  icon: Icon(
                    passwordObscured 
                      ? Icons.visibility 
                      : Icons.visibility_off,
                    color: Colors.white,
                  ),
                  press: () {
                    setState(() {
                      passwordObscured = !passwordObscured;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              CustomSwitch(
                activeToggleColor: kPrimaryColor,
                borderColor: Colors.white,
                activeColor: Colors.white,
                inactiveColor: Colors.transparent,
                showOnOff: true,
                value: remember,
                onToggle: (value){
                  setState(() {
                    remember = value;
                  });
                },
              ),
              SizedBox(width: getProportionateScreenHeight(10)),
              Row(
                children: [
                  Text(
                    "I accept the terms and policy. ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    child: SvgPicture.asset(
                      "assets/icons/akar-question.svg",
                      height: getProportionateScreenWidth(16),
                    ), 
                    onTap: () {
                      Navigator.pushNamed(context, TermsAndPolicyScreen.routeName);
                    },
                  ),
                ]
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          RoundedButton(
            text: "SIGN UP",
            color: Colors.white,
            textColor: kPrimaryColor, 
            width: 1,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      maxLength: 10,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        } else if (nameValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidNameError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        } else if (!nameValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidNameError);
          return "";
        }
        return null;
      },
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: "USERNAME",
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        hintText: "Enter your name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        counterText: '',
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: !passwordObscured,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      style: TextStyle(
        color: Colors.white,
        letterSpacing: 2.0,
      ),
      decoration: InputDecoration(
        labelText: "PASSWORD",
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        hintText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: "EMAIL ADDRESS",
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}