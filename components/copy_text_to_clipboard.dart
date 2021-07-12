import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../size_config.dart';

class CopyTextToClipboard extends StatelessWidget {
  final String text;
  const CopyTextToClipboard({
    Key key, 
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        IconButton(
          icon: Icon(
            Icons.content_copy_outlined, 
            color: Colors.white,
          ),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: text)).then((value){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Copied to clipboard'),
                )
              );
            });
          },
        ),
      ],
    );
  }
}