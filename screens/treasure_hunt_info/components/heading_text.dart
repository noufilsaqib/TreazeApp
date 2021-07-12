import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenWidth(80),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "St. Patrick's Day\nTreasure Hunt\n", 
              style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            TextSpan(
              text: "MARCH 17",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
