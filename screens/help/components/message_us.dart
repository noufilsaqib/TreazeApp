import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/components/chat_fab.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MessageUs extends StatelessWidget {
  const MessageUs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(-15 / 360),
                child: Text(
                  "Message Us",
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: getProportionateScreenWidth(16),
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(35)),
              child: SvgPicture.asset(
                "assets/icons/help_curved_arrow.svg"
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(5)),
            ChatFab(),
          ],
        )
      ),
    );
  }
}