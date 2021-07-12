import 'package:flutter/material.dart';
import 'package:treaze_app/components/custom_app_bar_one.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOne(),
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}