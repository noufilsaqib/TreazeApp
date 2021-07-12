import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treaze_app/screens/hints/hints_screen.dart';
import 'package:treaze_app/screens/home/home_screen.dart';
import 'package:treaze_app/screens/settings/settings_screen.dart';
import 'package:treaze_app/screens/treasure_hunts/treasure_hunts_screen.dart';
import 'package:treaze_app/size_config.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key, 
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/akar-home.svg", 
                  color: MenuState.home == selectedMenu ? kPrimaryColor : kTextColor,
                ), 
                onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/akar-map.svg",
                  color: MenuState.maps == selectedMenu ? kPrimaryColor : kTextColor,
                ),
                onPressed: () => Navigator.pushNamed(context, TreasureHuntsScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/akar-bulb.svg", 
                  color: MenuState.hint == selectedMenu ? kPrimaryColor : kTextColor,
                ), 
                onPressed: () => Navigator.pushNamed(context, HintsScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/akar-settings.svg", 
                  color: MenuState.settings == selectedMenu ? kPrimaryColor : kTextColor,
                ), 
                onPressed: () => Navigator.pushNamed(context, SettingsScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}