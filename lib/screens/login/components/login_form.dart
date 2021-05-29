import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treaze_app/components/form_error.dart';
import 'package:treaze_app/components/rounded_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  bool passwordObscured = false;
  
  final List<String> errors = [];

  void initState() {
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
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: [
              Transform.scale(
                scale: 0.55,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.white, width: 2.0),
                  ),
                  child: CupertinoSwitch(
                    value: remember, 
                    activeColor: Colors.white,
                    trackColor: Colors.transparent,
                    onChanged: (value) {
                      setState(() {
                        remember = value;
                      });
                    },
                  ),
                ),
              ),
              Text(
                "REMEMBER ME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "FORGOT PASSWORD?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          RoundedButton(
            text: "LOGIN",
            color: Colors.white,
            textColor: kPrimaryColor, 
            width: 1,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          )
        ],
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
        suffixIcon: IconButton(
          icon: Padding(
            padding: EdgeInsets.only(
              right: getProportionateScreenWidth(20),
            ),
            child: Icon(
              passwordObscured 
                ? Icons.visibility 
                : Icons.visibility_off,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
                passwordObscured = !passwordObscured;
            });
          },
        ),
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