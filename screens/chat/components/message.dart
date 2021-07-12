import 'package:flutter/material.dart';
import 'package:treaze_app/models/chat_messages.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Message extends StatelessWidget {
  const Message({
    Key key, 
    @required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isSender ? MainAxisAlignment.end: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenWidth(10)
          ),
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenWidth(10)
          ),
          constraints: BoxConstraints(maxWidth: getProportionateScreenWidth(250)),
          decoration: BoxDecoration(
            // color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.15),
            color: message.isSender ? kPrimaryColor : Color(0xFFF5F6F9),
            borderRadius: message.isSender 
              ? BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              )
              : BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )
          ),
          child: Text(
            message.text,
            style: TextStyle(
              color: message.isSender ? Colors.white : kSecondaryColor,
              fontSize: getProportionateScreenWidth(14),
            ),
          )
        ),
      ],
    );
  }
}

