import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TreasureHuntTimerCard extends StatefulWidget {
  const TreasureHuntTimerCard({
    Key key, 
    @required this.name, 
    @required this.image, 
    @required this.date,  
    @required this.timerDate,
    @required this.press,
  }) : super(key: key);

  final String name, image, date, timerDate;
  final Function press;

  @override
  _TreasureHuntTimerCardState createState() => _TreasureHuntTimerCardState();
}

class _TreasureHuntTimerCardState extends State<TreasureHuntTimerCard> {
  int endTime;
  
  void initState() {
    super.initState();
    endTime = DateTime.parse(widget.timerDate).millisecondsSinceEpoch;
  }
  
  @override  
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(30)),
        child: SizedBox(
          width: getProportionateScreenWidth(300),
          height: getProportionateScreenWidth(150),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              children: [
                Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kSecondaryColor.withOpacity(0.1),
                        kSecondaryColor.withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(12),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(gradient: kPrimaryGradientColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(10),
                              vertical: getProportionateScreenWidth(5),
                            ),
                            child: Timer(endTime: endTime),
                          ),
                        ),
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(12),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "${widget.name}\n", 
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(24),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                          TextSpan(
                            text: widget.date,
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(14),
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
          return Text(
            "Hunt Started",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(12),
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
          );
        }
        return Text(
          "${(time.days == null) ? "00" : time.days.toString().padLeft(2,'0')} : ${(time.hours == null) ? "00" : time.hours.toString().padLeft(2,'0')} : ${(time.min == null) ? "00" : time.min.toString().padLeft(2,'0')} : ${(time.sec == null) ? "00" : time.sec.toString().padLeft(2,'0')}",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
        );
      },
    );
  }
}