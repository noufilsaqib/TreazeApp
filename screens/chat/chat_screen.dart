import 'package:flutter/material.dart';
import 'package:treaze_app/components/chat_app_bar.dart';

import 'components/body.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(),
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}