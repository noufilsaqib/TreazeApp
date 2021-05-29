import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image, this.heading,
  }) : super(key: key);
  final String heading, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex: 6),
        SvgPicture.asset(
          image,
          height: getProportionateScreenHeight(275),
          width: getProportionateScreenWidth(235),
        ),
        Spacer(flex: 4),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(26),
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kTextColor,
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}