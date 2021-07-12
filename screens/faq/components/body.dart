import 'package:flutter/material.dart';
import 'package:treaze_app/components/outlined_text.dart';

import '../../../size_config.dart';
import 'expansion_panel_list_faq.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenWidth(20)),
            OutlinedText(
              text: "FAQ",
            ),
            SizedBox(height: getProportionateScreenWidth(30)),
            ExpansionPanelListFAQ(),
          ],
        ),
      ),
    );
  }
}

