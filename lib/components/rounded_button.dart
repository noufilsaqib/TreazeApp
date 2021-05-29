import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double width;
  final Function press;
  final Color color, textColor, borderColor;
  final FontWeight fontWeight;
  const RoundedButton({
    Key key,
    this.text,
    this.width = 0.6,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.bold, 
    this.borderColor = Colors.transparent, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(10), 
        horizontal: getProportionateScreenWidth(6),
      ),
      width: size.width * width,
      child: FlatButton(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15), 
          horizontal: getProportionateScreenWidth(30),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: borderColor, width: 3),
        ),
        color: color,
        onPressed: press, 
        child: Text(
          text, 
          style: TextStyle(
            color: textColor,
            fontSize: getProportionateScreenWidth(14),
            fontWeight: fontWeight,
            letterSpacing: 4,
          ),
        ),
      ),
    );
  }
}