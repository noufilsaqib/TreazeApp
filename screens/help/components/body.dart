import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/components/outlined_text.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'contact_button.dart';
import 'message_us.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenWidth(20)),
            OutlinedText(
              text: "Request Help",
            ),
            SvgPicture.asset(
              "assets/images/request-help.svg",
              width: getProportionateScreenWidth(300
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              "Hi, how can I help you?",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              "Any questions or remarks?\nJust write us a message!",
              style: TextStyle(
                color: kTextColor,
                fontSize: getProportionateScreenWidth(14),
                letterSpacing: 1.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactButton(
                  text: "Call Us",
                  icon: "assets/icons/akar-phone.svg", 
                  url: "tel:+1 778 242 4767", 
                ),
                ContactButton(
                  text: "Email Us",
                  icon: "assets/icons/akar-envelope.svg", 
                  url: "mailto:noufil.s@hotmail.com", 
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
            MessageUs(),
            SizedBox(height: getProportionateScreenWidth(40)),
          ],
        ),
      ),
    );
  }
}

