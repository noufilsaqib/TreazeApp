import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key, 
    this.icon,
    this.color = Colors.white,
    this.press,
  }) : super(key: key);

  final String icon;
  final Color color;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenWidth(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: new Border.all(
            color: color,
            width: 1.0,
          ),
        ),
        child: SvgPicture.asset(icon, color: color,),
      ),
    );
  }
}