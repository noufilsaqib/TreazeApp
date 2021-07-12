import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PrevHuntsData extends StatelessWidget {
  const PrevHuntsData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "1", 
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(5)),
            Text(
              "HUNTS PLAYED", 
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: kSecondaryColor,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              "0", 
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(5)),
            Text(
              "HUNTS WON", 
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: kSecondaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

