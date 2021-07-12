import 'package:flutter/material.dart';
import 'package:treaze_app/constants.dart';

import '../../../size_config.dart';
import 'buy_now_footer.dart';
import 'heading_text.dart';
import 'hunt_data_list.dart';
import 'hunt_timer.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/stpatrickhunt.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kSecondaryColor.withOpacity(0.2),
                  kSecondaryColor.withOpacity(1),
                ],
              ),
            ),
          ),
          HeadingText(),
          Padding(
            padding: EdgeInsets.only(
              top: getProportionateScreenWidth(200),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: getProportionateScreenWidth(30)),
                        HuntTimer(
                          timerDate: "2021-06-14 10:00:00",
                        ),
                        SizedBox(height: getProportionateScreenWidth(30)),
                        HuntDataList(
                          text: "Wednesday, March 17, 2021",
                          icon: "assets/icons/akar-calendar.svg",
                        ),
                        SizedBox(height: getProportionateScreenWidth(10)),
                        HuntDataList(
                          text: "10:00 AM PST",
                          icon: "assets/icons/core-cil-clock.svg",
                        ),
                        SizedBox(height: getProportionateScreenWidth(10)),
                        HuntDataList(
                          text: "Kelowna, BC",
                          icon: "assets/icons/akar-location.svg",
                        ),
                        SizedBox(height: getProportionateScreenWidth(30)),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Lorem ipsum dolor sit amet, elit. Sed purus ac sapien, vitae. Massa enim eget sed ac, massa risus ut. Ut sed at aenean tincidunt.",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BuyNowFooter(url: "https://treaze.co/", inStock: false,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

