import 'package:flutter/material.dart';
// import 'package:treaze_app/components/rounded_button.dart';

import '../../../constants.dart';
import 'login_signup_splash.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "heading": "BUY TREASURE MAP",
      "text": "Lorem ipsum dolor sit amet, elit. Sed \npurus ac sapien, vitae. Massa enim eget \nsed ac, massa risus ut. Ut sed at aenean \ntincidunt.",

      "image": "assets/images/undraw-splash-1.svg"
    },
    {
      "heading": "TREASURE HUNT STARTS",
      "text": "Players will receive the first clue for the \ntreasure hunt via the chat feature on the \napp which will lead to a Treaźe Box. Scan \nit for the next clue.",
      "image": "assets/images/undraw-splash-2.svg"
    },
    {
      "heading": "YOU WIN",
      "text": "The final clue will reveal a word which the \nplayer will submit via the I WON feature \non the app. First player to correctly answer \nthe clue will win the prize.",
      "image": "assets/images/undraw-splash-3.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  heading: splashData[index]["heading"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(
                          index: index
                        ),
                      ),
                    ),
                    Spacer(),
                    LoginSignupSplash(),
                    // RoundedButton(
                    //   text: "SKIP",
                    //   color: Colors.transparent,
                    //   textColor: Color(0x44999999),
                    //   borderColor: Color(0x33999999),
                    //   width: 0.4,
                    //   press: () {},
                    // ),
                    Spacer(flex: 2),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}