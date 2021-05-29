import 'package:flutter/material.dart';

import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  final bool login;
  final Function press;
  const NoAccountText({
    Key key,
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "DON'T HAVE AN ACCOUNT?" : "ALREADY HAVE AN ACCOUNT?",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
