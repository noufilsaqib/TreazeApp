import 'package:flutter/material.dart';
import 'package:treaze_app/screens/chat/chat_screen.dart';

import '../constants.dart';

class ChatFab extends StatelessWidget {
  const ChatFab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Container(
        width: 60,
        height: 60,
        child: Icon(
          Icons.chat_bubble_outline_rounded,
          size: 30,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: kPrimaryGradientColor,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, ChatScreen.routeName);
      },
    );
  }
}