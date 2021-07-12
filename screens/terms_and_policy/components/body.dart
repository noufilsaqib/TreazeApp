import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';

import '../../../size_config.dart';
import 'description.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenWidth(20)),
            OutlinedText(
              text: "Terms & Policy",
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Description(),
          ],
        ),
      ),
    );
  }
}

