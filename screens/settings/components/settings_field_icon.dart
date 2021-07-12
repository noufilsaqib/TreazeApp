import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/size_config.dart';

import '../../../constants.dart';

class SettingsFieldIcon extends StatefulWidget {
  const SettingsFieldIcon({ 
    Key key ,
    @required this.text, 
    @required this.icon, 
    this.variable = true,
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final bool variable;
  final Function press;

  @override
  _SettingsFieldIconState createState() => _SettingsFieldIconState();
}

class _SettingsFieldIconState extends State<SettingsFieldIcon> {
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
            Icon(
              Icons.edit_outlined,
              size: getProportionateScreenWidth(18),
              color: widget.variable ? Colors.black12 : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}