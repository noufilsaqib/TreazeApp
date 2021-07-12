import 'package:flutter/material.dart';
import 'package:treaze_app/components/custom_app_bar_one.dart';

import 'components/body.dart';

class TreasureHuntInfoScreen extends StatelessWidget {
  static String routeName = "/treasure_hunt_info";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOne(),
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}