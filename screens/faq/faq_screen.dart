import 'package:flutter/material.dart';
import 'package:treaze_app/components/custom_app_bar_one.dart';
import 'package:treaze_app/components/custom_side_nav.dart';
import 'package:treaze_app/constants.dart';

import 'components/body.dart';

class FAQScreen extends StatelessWidget {
  static String routeName = "/faq";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomSideNav(),
      appBar: CustomAppBarOne(
        color: kSecondaryColor,
      ),
      body: Body(),     
    );
  }
}