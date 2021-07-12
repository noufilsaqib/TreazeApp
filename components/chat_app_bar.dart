import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/constants.dart';

import '../size_config.dart';

class ChatAppBar extends PreferredSize {
  final Color color;
  const ChatAppBar({
    Key key,
    this.color = Colors.white,
  });

  @override
  Size get preferredSize => Size.fromHeight(getProportionateScreenWidth(70));
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(30),
            right: getProportionateScreenWidth(15),
            top: getProportionateScreenWidth(15),
            bottom: getProportionateScreenWidth(15),
          ),
          child: Row(
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/carbon-user.svg",
                color: Colors.white,
              ),
              SizedBox(width: getProportionateScreenWidth(15)),
              Text(
                "Treaźe Support",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.w600
                ),
              ),
              Spacer(),
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
      ),
    );
  }
}