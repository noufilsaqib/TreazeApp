import 'package:flutter/material.dart';

import '../size_config.dart';

class UnfocusedFormFieldSuffixIcon extends StatelessWidget {
  final Icon icon;
  final Function press;
  const UnfocusedFormFieldSuffixIcon({
    Key key, 
    @required this.icon, 
    @required this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Padding(
        padding: EdgeInsets.only(
          right: getProportionateScreenWidth(20),
        ),
        child: icon,
      ),
      onPressed: press,
    );
  }
}