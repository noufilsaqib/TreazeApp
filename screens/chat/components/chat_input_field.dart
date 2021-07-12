import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF5F6F9),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 35,
            color: kSecondaryColor.withOpacity(0.15)
          ),
        ]
      ),
      child: Row(
        children: [
          // Icon(Icons.mic, color: kPrimaryColor),
          // SizedBox(width: getProportionateScreenWidth(15)),
          Expanded(
            child: Container(
              height: getProportionateScreenWidth(50),
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  // Icon(Icons.sentiment_satisfied_alt_outlined, color: kPrimaryColor),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Expanded(
                    child: Theme(
                      data: ThemeData(
                        fontFamily: "Open Sans",                        
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type your message ...",
                          hintStyle: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  // Icon(Icons.attach_file, color: kPrimaryColor),
                  // SizedBox(width: getProportionateScreenWidth(5)),
                  // Icon(Icons.camera_alt_outlined, color: kPrimaryColor),
                  IconButton(
                    icon: Icon(Icons.send, color: kPrimaryColor),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}