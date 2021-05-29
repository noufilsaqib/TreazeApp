import 'package:flutter/material.dart';

import '../constants.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function press;
  final EdgeInsets margin;
  const SecondaryButton({
    Key key, 
    this.text, 
    this.margin, 
    this.press,
  }) : super(key: key);

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
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}

