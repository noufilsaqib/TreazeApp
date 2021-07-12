import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TreasureHuntPriceCard extends StatelessWidget {
  const TreasureHuntPriceCard({ 
    Key key, 
    @required this.name, 
    @required this.image, 
    @required this.date,  
    @required this.press,
    this.price,
    this.inStock = true,
  }) : super(key: key);

  final String name, image, date;
  final double price;
  final bool inStock;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenWidth(150),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kSecondaryColor.withOpacity(0.1),
                    kSecondaryColor.withOpacity(0.3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenWidth(12),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(gradient: kPrimaryGradientColor),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenWidth(5),
                        ),
                        child: Text(
                          this.inStock
                            ? "\$$price"
                            : "SOLD OUT",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(12),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$name\n", 
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(24),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      TextSpan(
                        text: date,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}