import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/components/custom_switch.dart';
import 'package:treaze_app/size_config.dart';

import '../../../constants.dart';

class SettingsFieldSwitch extends StatefulWidget {
  const SettingsFieldSwitch({ 
    Key key ,
    @required this.text, 
    @required this.icon, 
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final Function press;

  @override
  _SettingsFieldSwitchState createState() => _SettingsFieldSwitchState();
}

class _SettingsFieldSwitchState extends State<SettingsFieldSwitch> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(2),
      ),
      child: FlatButton(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Color(0xFFF5F6F9),
        onPressed: widget.press,
        child: Row(
          children: [
            SvgPicture.asset(
              widget.icon,
              width: getProportionateScreenWidth(24),
              color: kSecondaryColor,
            ),
            SizedBox(width: getProportionateScreenWidth(20)),
            Expanded(
              child: Text(
                widget.text, 
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProportionateScreenWidth(14),
                  letterSpacing: 1.0,
                ),
              ),
            ),
            CustomSwitch(
              showOnOff: true,
              value: remember,
              onToggle: (value){
                setState(() {
                  remember = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}