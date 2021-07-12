import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "1. Introduction",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          Text(
            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),

          Text(
            "2. The Hunt",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          Text(
            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),

          Text(
            "3. Winner's Prize",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          Text(
            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),

          Text(
            "4. Privacy",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          Text(
            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),

          Text(
            "5. Disclaimer of Warranties",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          Text(
            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          
          Text(
            "6. Liability Limits",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          Text(
            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(14),
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(30)),
        ],
      ),
    );
  }
}