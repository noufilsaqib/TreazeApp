import 'package:flutter/material.dart';
import 'package:treaze_app/components/chat_fab.dart';
import 'package:treaze_app/components/custom_app_bar_two.dart';
import 'package:treaze_app/components/custom_bottom_nav_bar.dart';
import 'package:treaze_app/components/custom_side_nav.dart';

import '../../enums.dart';
import 'components/body.dart';

class TreasureHuntsScreen extends StatelessWidget {
  static String routeName = "/treasure_hunts";
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomSideNav(),
      appBar: CustomAppBarTwo(press: () => scaffoldKey.currentState.openDrawer()),
      body: Body(),
      floatingActionButton: ChatFab(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.maps),
    );
  }
}