import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class OutlinedText extends StatelessWidget {
  final String text;
  final double size;
  final Alignment align;
  const OutlinedText({
    Key key, 
    @required this.text, 
    this.align = Alignment.topCenter,
    this.size = 36, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: SizedBox(
        width: double.infinity,
        child: Align(
          alignment: align,
          child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                text,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(size),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.0,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = kSecondaryColor,
                ),
              ),
              // Solid text as fill.
              Text(
                text,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(size),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}