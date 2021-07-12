import 'package:flutter/material.dart';

import '../constants.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key, 
    @required this.text, 
    this.margin, 
    @required this.press, 
    this.fontSize = 14,
  }) : super(key: key);
  
  final String text;
  final Function press;
  final double fontSize;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: kPrimaryColor, 
            width: 5, // Underline thickness
          ))
        ),
        child: Text(
          text,
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}

