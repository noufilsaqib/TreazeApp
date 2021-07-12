import 'package:flutter/material.dart';

import 'settings_field_icon.dart';

class SettingsFieldIconUsername extends StatelessWidget {
  const SettingsFieldIconUsername({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsFieldIcon(
      text: "johndoe", 
      icon: "assets/icons/carbon-user.svg", 
      variable: false,
      press: () {},
    );
  }
}