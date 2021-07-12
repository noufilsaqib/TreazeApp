import 'package:flutter/material.dart';

import 'settings_field_icon.dart';

class SettingsFieldIconEmail extends StatelessWidget {
  const SettingsFieldIconEmail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsFieldIcon(
      text: "name@email.com", 
      icon: "assets/icons/akar-envelope.svg", 
      variable: false,
      press: () {},
    );
  }
}