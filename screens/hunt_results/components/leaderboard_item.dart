import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/models/leaderboard.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class LeaderboardItem extends StatelessWidget {
  const LeaderboardItem({
    Key key, 
    this.position, 
    @required this.leaderboardItem,
  }) : super(key: key);

  final int position;
  final LeaderboardPositionItem leaderboardItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(10),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
            child: SizedBox(
              width: getProportionateScreenWidth(20),
              child: Text(
                "$position", 
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getProportionateScreenWidth(14.0),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(10), 
              getProportionateScreenWidth(10), 
              getProportionateScreenWidth(20), 
              getProportionateScreenWidth(10)
            ),
            decoration: BoxDecoration(
              gradient: leaderboardItem.isYou ? kPrimaryGradientColor : LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  offset: Offset(4, 10),
                  blurRadius: 40,
                  color: kSecondaryColor.withOpacity(0.1),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
                  child: SvgPicture.asset(
                    "assets/icons/carbon-user.svg", 
                    color: kSecondaryColor, 
                    width: getProportionateScreenWidth(40),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(160),
                  child: Text(
                    leaderboardItem.username,
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  leaderboardItem.time,
                  style: TextStyle(
                    color: leaderboardItem.isYou ? Colors.white : kTextColor,
                    fontSize: getProportionateScreenWidth(14.0),
                    fontWeight: leaderboardItem.isYou ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}