import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';

import '../../../size_config.dart';
import 'treasure_hunt_price_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(            
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            OutlinedText(
              text: "Treasure Hunts",
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TreasureHuntPriceCard(
              image: "assets/images/stpatrickhunt.jpg",
              name: "St. Patrick's Day\nTreasure Hunt",
              date: "MARCH 17",
              price: 24.99,
              inStock: false,
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TreasureHuntPriceCard(
              image: "assets/images/easterhunt.jpg",
              name: "Easter Special\nTreasure Hunt",
              date: "APRIL 4",
              price: 24.99,
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TreasureHuntPriceCard(
              image: "assets/images/motherhunt.jpg",
              name: "Mother's Day\nTreasure Hunt",
              date: "MAY 9",
              price: 24.99,
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TreasureHuntPriceCard(
              image: "assets/images/fatherhunt.jpg",
              name: "Father's Day\nTreasure Hunt",
              date: "JUNE 20",
              price: 24.99,
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TreasureHuntPriceCard(
              image: "assets/images/halloweenhunt.jpg",
              name: "Halloween Special\nTreasure Hunt",
              date: "OCTOBER 31",
              price: 24.99,
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TreasureHuntPriceCard(
              image: "assets/images/christmashunt.jpg",
              name: "Christmas Special\nTreasure Hunt",
              date: "DECEMBER 25",
              price: 24.99,
              press: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
          ],
        ),
      ),
    );
  }
}