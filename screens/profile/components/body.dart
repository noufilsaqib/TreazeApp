import 'package:flutter/material.dart';
import 'package:treaze_app/components/background.dart';
import 'package:treaze_app/constants.dart';
import 'package:treaze_app/screens/profile/components/treasure_hunt_results_card.dart';

import '../../../size_config.dart';
import 'prev_hunts_data.dart';
import 'profile_pic.dart';
import 'social_buttons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(200)),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Container(
                  transform: Matrix4.translationValues(0.0, getProportionateScreenWidth(-50), 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialButtonFB(),
                          ProfilePic(),
                          SocialButtonGoogle(),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenWidth(10)),
                      Center(
                        child: Text(
                          "johndoe", 
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(24),
                            fontWeight: FontWeight.w600,
                            color: kSecondaryColor,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenWidth(5)),
                      Center(
                        child: Text(
                          "name@email.com", 
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: kSecondaryColor,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenWidth(20)),
                      Divider(
                        color: kSecondaryColor.withOpacity(0.05),
                        thickness: 1,
                      ),
                      SizedBox(height: getProportionateScreenWidth(10)),  
                      PrevHuntsData(),
                      SizedBox(height: getProportionateScreenWidth(10)),                    
                      Divider(
                        color: kSecondaryColor.withOpacity(0.05),
                        thickness: 1,
                      ),
                      SizedBox(height: getProportionateScreenWidth(30)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            "COMPLETED TREASURE HUNTS", 
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenWidth(15)),
                      TreasureHuntResultsCard(
                        name: "Family Day\nTreasure Hunt", 
                        image: "assets/images/familyhunt.jpg", 
                        date: "FEBRUARY 15", 
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

