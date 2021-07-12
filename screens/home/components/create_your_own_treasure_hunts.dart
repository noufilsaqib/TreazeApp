import 'package:flutter/material.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CreateYourOwnTreasureHunts extends StatefulWidget {
  const CreateYourOwnTreasureHunts({ 
    Key key, 
    this.url = "https://treaze.co/blogs/services", 
  }) : super(key: key);

  final String url;

  @override
  _CreateYourOwnTreasureHuntsState createState() => _CreateYourOwnTreasureHuntsState();
}

class _CreateYourOwnTreasureHuntsState extends State<CreateYourOwnTreasureHunts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(30)),
          Text(
            "Create your own\ntreasure hunts\n", 
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(24), 
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
            maxLines: 2,
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Whether it is a bachelor party or\na corporate event, we will bring\nthe adventure to you.",
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          RoundedButton(
            text: "LET'S GO",
            color: Colors.white,
            textColor: kPrimaryColor, 
            width: 0.5,
            press: () async {
              var link = widget.url;
              if (await canLaunch(link)) {
                await launch(link);
              } else {
                throw "Could not launch $link";
              }
            },
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset("assets/images/createyourownhunt.jpg")
          ),
        ],
      ),
    );
  }
}