import 'package:flutter/material.dart';
import 'package:treaze_app/models/chat_messages.dart';

import '../../../size_config.dart';
import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(10)),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: demoChatMessages.length,
            itemBuilder: (context, index) => Message(message: demoChatMessages[index])
          ),
        ),
        ChatInputField()
      ],
    );
  }
}
