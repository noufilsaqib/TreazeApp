import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';
import 'package:treaze_app/models/leaderboard.dart';

import '../../../size_config.dart';
import 'leaderboard_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: getProportionateScreenWidth(20)),
          OutlinedText(
            text: "Leaderboard",
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: getProportionateScreenWidth(30),
                bottom: getProportionateScreenWidth(40),
              ),
              itemBuilder: (context, index) => LeaderboardItem(position: index + 1, leaderboardItem: demoLeaderboard[index]),
              itemCount: demoLeaderboard.length,
            ),
          ),
        ],
      ),
    );
  }
}