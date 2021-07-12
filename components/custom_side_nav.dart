import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/screens/faq/faq_screen.dart';
import 'package:treaze_app/screens/help/help_screen.dart';
import 'package:treaze_app/screens/home/home_screen.dart';
import 'package:treaze_app/screens/login/login_screen.dart';
import 'package:treaze_app/screens/profile/profile_screen.dart';
import 'package:treaze_app/screens/refer_friends/refer_friends_screen.dart';
import 'package:treaze_app/screens/terms_and_policy/terms_and_policy_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomSideNav extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20));
  @override
  Widget build(BuildContext context) {
    final icon = "assets/icons/carbon-user.svg";
    final name = 'John Doe';
    final email = 'name@email.com';

    return Container(
      width: getProportionateScreenWidth(250),
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: kPrimaryGradientColor,
          ),
          child: ListView(
            padding: padding,
            children: <Widget>[
              buildHeader(
                icon: icon,
                name: name,
                email: email,
                press: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 70),
              buildMenuItem(
                text: "Home",
                icon: "assets/icons/akar-home.svg",
                press: () => selectedItem(context, 1),
              ),
              // Divider(color: Colors.white, thickness: 2,),
              const SizedBox(height: 20),
              buildMenuItem(
                text: "Help",
                icon: "assets/icons/clarity-help.svg",
                press: () => selectedItem(context, 2),
              ),
              // Divider(color: Colors.white),
              const SizedBox(height: 20),
              buildMenuItem(
                text: "FAQ",
                icon: "assets/icons/carbon-forum.svg",
                press: () => selectedItem(context, 3),
              ),
              // Divider(color: Colors.white),
              const SizedBox(height: 20),
              buildMenuItem(
                text: "Refer Friends",
                icon: "assets/icons/line-friends.svg",
                press: () => selectedItem(context, 4),
              ),
              // Divider(color: Colors.white),
              const SizedBox(height: 20),
              buildMenuItem(
                text: "Sign Out",
                icon: "assets/icons/akar-signout.svg",
                press: () => selectedItem(context, 5),
              ),
              // const SizedBox(height: 180),
              // buildFooter(
              //   text: "Terms & Policy",
              //   press: () => selectedItem(context, 6),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    @required String icon,
    @required String name,
    @required String email,
    VoidCallback press,
  }) => InkWell(
    onTap: press,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(40)),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            icon,
            color: Colors.white,
            height: getProportionateScreenWidth(48),
            width: getProportionateScreenWidth(48),
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20), 
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                email,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );

  Widget buildMenuItem({
    @required String text,
    @required String icon,
    VoidCallback press,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: SvgPicture.asset(icon, color: color),
      title: Text(
        text, 
        style: TextStyle(
          color: color,
          fontSize: getProportionateScreenWidth(18),
        ),
      ),
      onTap: press,
    );
  }

  Widget buildFooter({
    @required String text,
    VoidCallback press,
  }) => Row (
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      GestureDetector(
        onTap: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            letterSpacing: 1.0,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.pushNamed(context, ProfileScreen.routeName);
        break;
      case 1:
        Navigator.pushNamed(context, HomeScreen.routeName);
        break;
      case 2:
        Navigator.pushNamed(context, HelpScreen.routeName);
        break;
      case 3:
        Navigator.pushNamed(context, FAQScreen.routeName);
        break;
      case 4:
        Navigator.pushNamed(context, ReferFriendsScreen.routeName);
        break;
      case 5:
        Navigator.pushNamed(context, LoginScreen.routeName);
        break;
      case 6:
        Navigator.pushNamed(context, TermsAndPolicyScreen.routeName);
        break;
    }
  }
}