import 'package:flutter/material.dart';
import 'package:treaze_app/screens/treasure_hunt_info/treasure_hunt_info_screen.dart';

import '../../../size_config.dart';
import 'treasure_hunt_timer_card.dart';

class YourTreasureHunts extends StatelessWidget {
  const YourTreasureHunts({ 
    Key key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TreasureHuntTimerCard(
            image: "assets/images/stpatrickhunt.jpg",
            name: "St. Patrick's Day\nTreasure Hunt",
            date: "MARCH 17",
            timerDate: "2021-08-14 10:00:00",
            press: () {
              Navigator.pushNamed(context, TreasureHuntInfoScreen.routeName);
            },
          ),
          TreasureHuntTimerCard(
            image: "assets/images/easterhunt.jpg",
            name: "Easter Special\nTreasure Hunt",
            date: "APRIL 4",
            timerDate: "2021-09-16 10:00:00",
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(30)),
        ],
      ),
    );
  }
}