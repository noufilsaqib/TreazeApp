import 'package:flutter/material.dart';
import 'package:treaze_app/components/custom_app_bar_one.dart';

import '../../constants.dart';
import 'components/body.dart';

class HuntResultsScreen extends StatelessWidget {
  static String routeName = "/hunt_results";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOne(
        color: kSecondaryColor,
      ),
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}