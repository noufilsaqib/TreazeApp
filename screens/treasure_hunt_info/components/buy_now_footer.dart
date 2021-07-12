import 'package:flutter/material.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BuyNowFooter extends StatefulWidget {
  const BuyNowFooter({
    Key key, 
    @required this.url, 
    this.inStock = true, 
  }) : super(key: key);

  final String url;
  final bool inStock;

  @override
  _BuyNowFooterState createState() => _BuyNowFooterState();
}

class _BuyNowFooterState extends State<BuyNowFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenWidth(5),
      ),
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$24.99",
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(190),
            child: widget.inStock 
            ? RoundedButton(
                text: "BUY NOW",
                textColor: kPrimaryColor,
                color: Colors.white,
                press: () async {
                  var link = widget.url;
                  if (await canLaunch(link)) {
                    await launch(link);
                  } else {
                    throw "Could not launch $link";
                  }
                },
              )
            : RoundedButton(
                text: "SOLD OUT",
                textColor: Colors.white.withOpacity(0.75),
                color: Colors.transparent,
                borderColor: Colors.white.withOpacity(0.75),
                press: () {},
              ),
          )
        ],
      ),
    );
  }
}

