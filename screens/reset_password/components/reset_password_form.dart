import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treaze_app/components/form_error.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:treaze_app/components/unfocused_form_field_suffix_icon.dart';
import 'package:treaze_app/screens/login/login_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ResetPasswordForm extends StatefulWidget {
  @override
  _ResetPasswordFormState createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String password;
  String confirmPassword;
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
          SizedBox(height: getProportionateScreenHeight(30)),
          Container(
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                buildConfPasswordFormField(),
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
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          RoundedButton(
            text: "RESET PASSWORD",
            color: Colors.white,
            textColor: kPrimaryColor, 
            width: 1,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginScreen.routeName);
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
        labelText: "NEW PASSWORD",
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

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      obscureText: !passwordObscured,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (password != confirmPassword) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      style: TextStyle(
        color: Colors.white,
        letterSpacing: 2.0,
      ),
      decoration: InputDecoration(
        labelText: "CONFIRM PASSWORD",
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
}