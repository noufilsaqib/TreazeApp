import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treaze_app/components/form_error.dart';
import 'package:treaze_app/components/unfocused_form_field_suffix_icon.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ReferFriendsForm extends StatefulWidget {
  @override
  _ReferFriendsFormState createState() => _ReferFriendsFormState();
}

class _ReferFriendsFormState extends State<ReferFriendsForm> {
  final _formKey = GlobalKey<FormState>();
  String code;
  
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
          Container(
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                buildCodeFormField(),
                UnfocusedFormFieldSuffixIcon(
                  icon: Icon(Icons.arrow_forward_outlined, color: Colors.white),
                  press: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      buildShowDialog(context);
                    }
                  },
                ),
              ],
            ),
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
        ],
      ),
    );
  }

  TextFormField buildCodeFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      maxLength: 16,
      onSaved: (newValue) => code = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kCodeNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kCodeNullError);
          return "";
        }
        return null;
      },
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: "REFERRAL CODE",
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
        ),
        hintText: "Enter referral code",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        counterText: '',
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
      context: context, 
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            height: getProportionateScreenHeight(270),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30),
                vertical: getProportionateScreenWidth(30),
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.check_circle,
                    color: kPrimaryColor,
                    size: 60,
                  ),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  Text(
                    "All good!",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Text(
                    "You will receive an email containing a discount of \$10 off your next purchase.",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(14),
                      letterSpacing: 1.0,
                    ),
                    textAlign: TextAlign.center,
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

