import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';
import 'package:treaze_app/constants.dart';

import '../../../size_config.dart';
import 'hint_image_picker.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenWidth(20)),
            OutlinedText(
              text: "Hints",
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Text(
              "To receive a complimentary hint, you have\nto submit a photo of yourself properly\ndisposing of some garbage or a photo of\na receipt supporting your local business.\nYou will receive your hint in the Treaźe\nChat on the day of the treasure hunt.",
              style: TextStyle(
                color: kTextColor,
                fontSize: getProportionateScreenWidth(14),
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(50)),
            HintImagePicker()
          ],
        ),
      ),
    );
  }
}