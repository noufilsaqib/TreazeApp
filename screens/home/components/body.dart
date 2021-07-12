import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'create_your_own_treasure_hunts.dart';
import 'your_treasure_hunts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(            
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenWidth(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Hi, johndoe!",
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: getProportionateScreenWidth(36),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            OutlinedText(
              text: "Your Treasure Hunts",
              align: Alignment.topLeft,
              size: 24,
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            YourTreasureHunts(),
            SizedBox(height: getProportionateScreenWidth(40)),
            CreateYourOwnTreasureHunts(),
            SizedBox(height: getProportionateScreenWidth(40)),
          ],
        ),
      ),
    );
  }
}

