import 'package:flutter/material.dart';
import 'package:treaze_app/components/copy_text_to_clipboard.dart';
import 'package:treaze_app/components/background.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'refer_friends_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "Refer Your",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(24),
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      "Friends",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Londrina Solid",
                        fontSize: getProportionateScreenWidth(64),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(30)),
                Text(
                  "Refer your friends, and they will each receive \$10 off their next purchase. On top of that, we’ll give you \$10 for each friend you refer, after they make a purchase.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(60)),
                ReferFriendsForm(),
                CopyTextToClipboard(text: "johndoe01"),
                SizedBox(height: getProportionateScreenWidth(150)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

