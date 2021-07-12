import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HuntDataList extends StatelessWidget {
  const HuntDataList({
    Key key, 
    @required this.text, 
    @required this.icon,
  }) : super(key: key);
  
  final String text, icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SvgPicture.asset(
            icon,
            width: getProportionateScreenWidth(20),
            color: kSecondaryColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: getProportionateScreenWidth(14)
          ),
        )
      ],
    );
  }
}