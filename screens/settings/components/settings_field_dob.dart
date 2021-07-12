import 'package:flutter/material.dart';

import 'settings_field_icon.dart';

class SettingsFieldIconDOB extends StatefulWidget {
  const SettingsFieldIconDOB({
    Key key,
  }) : super(key: key);

  @override
  _SettingsFieldIconDOBState createState() => _SettingsFieldIconDOBState();
}

class _SettingsFieldIconDOBState extends State<SettingsFieldIconDOB> {
  DateTime date = DateTime.now();
  final List months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

  @override
  Widget build(BuildContext context) {
    return SettingsFieldIcon(
      text: months[(date.month)-1] + " " + date.day.toString() + ", " + date.year.toString(), 
      icon: "assets/icons/akar-calendar.svg", 
      press: () {
        selectDatePicker(context);
      },
    );
  }

  Future<Null> selectDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context, 
      initialDate:  DateTime.now(), 
      firstDate: DateTime(1940), 
      lastDate: DateTime((DateTime.now().year)+1),
      helpText: "SELECT DATE OF BIRTH",
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }
}