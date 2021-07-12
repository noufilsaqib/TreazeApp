import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treaze_app/components/form_error.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:treaze_app/screens/reset_password/reset_password_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  
  final List<String> errors = [];

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
        children: <Widget>[
          buildEmailFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          RoundedButton(
            text: "SEND INSTRUCTIONS",
            color: Colors.white,
            textColor: kPrimaryColor, 
            width: 1,
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, ResetPasswordScreen.routeName);
              }
            },
          )
        ],
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
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
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