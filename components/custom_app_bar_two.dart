import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/screens/profile/profile_screen.dart';

import '../size_config.dart';

class CustomAppBarTwo extends PreferredSize {
  final Function press;
  const CustomAppBarTwo({
    Key key,
    this.press,
  });
  
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenWidth(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/box-menu.svg",
              ),
              onPressed: press,
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/carbon-user.svg",
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}