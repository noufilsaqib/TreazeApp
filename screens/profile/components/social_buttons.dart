import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SocialButtonGoogle extends StatelessWidget {
  const SocialButtonGoogle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenWidth(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset("assets/icons/akar-google.svg", color: Colors.white,),
      ),
    );
  }
}

class SocialButtonFB extends StatelessWidget {
  const SocialButtonFB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenWidth(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset("assets/icons/core-cib-facebook-f.svg", color: Colors.white,),
      ),
    );
  }
}