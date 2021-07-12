import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class CustomAppBarOne extends PreferredSize {
  final Color color;
  const CustomAppBarOne({
    Key key,
    this.color = Colors.white,
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
            SvgPicture.asset(
                "assets/icons/akar-cross.svg",
                color: Colors.transparent,
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/akar-cross.svg",
                color: color,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}