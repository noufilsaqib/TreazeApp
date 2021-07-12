import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:treaze_app/components/secondary_button.dart';
import 'package:treaze_app/screens/game/game_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HuntTimer extends StatefulWidget {
  const HuntTimer({
    Key key, 
    @required this.timerDate,
  }) : super(key: key);

  final String timerDate;

  @override
  _HuntTimerState createState() => _HuntTimerState();
}

class _HuntTimerState extends State<HuntTimer> {
  int endTime;
  
  void initState() {
    super.initState();
    endTime = DateTime.parse(widget.timerDate).millisecondsSinceEpoch;
  }

  @override
  Widget build(BuildContext context) {
    return Timer(endTime: endTime);
  }
}

class Timer extends StatelessWidget {
  const Timer({
    Key key,
    @required this.endTime,
  }) : super(key: key);

  final int endTime;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: endTime,
      widgetBuilder: (_, CurrentRemainingTime time) {
        if (time == null) {
          return SecondaryButton(
            text: "Hunt Started",
            fontSize: getProportionateScreenWidth(30),
            press: () {
              Navigator.pushNamed(context, GameScreen.routeName);
            },
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(15),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "${(time.days == null) ? "00" : time.days.toString().padLeft(2,'0')}",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(20),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(5)),
                Text(
                  "DAYS",
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.7),
                    fontSize: getProportionateScreenWidth(10),
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(15),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "${(time.hours == null) ? "00" : time.hours.toString().padLeft(2,'0')}",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(20),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(5)),
                Text(
                  "HOURS",
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.7),
                    fontSize: getProportionateScreenWidth(10),
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(15),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "${(time.min == null) ? "00" : time.min.toString().padLeft(2,'0')}",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(20),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(5)),
                Text(
                  "MINUTES",
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.7),
                    fontSize: getProportionateScreenWidth(10),
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(15),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "${(time.sec == null) ? "00" : time.sec.toString().padLeft(2,'0')}",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(20),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(5)),
                Text(
                  "SECONDS",
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.7),
                    fontSize: getProportionateScreenWidth(10),
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}