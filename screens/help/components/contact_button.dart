import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ContactButton extends StatefulWidget {
  const ContactButton({
    Key key, 
    @required this.text, 
    @required this.icon, 
    @required this.url,
  }) : super(key: key);

  final String text, icon, url;

  @override
  _ContactButtonState createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        var link = widget.url;
        if (await canLaunch(link)) {
          await launch(link);
        } else {
          throw "Could not launch $link";
        }
      },
      child: Container(
        height: getProportionateScreenHeight(150),
        width: getProportionateScreenHeight(150),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 10),
              blurRadius: 40,
              color: kSecondaryColor.withOpacity(0.1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.icon,
              color: kSecondaryColor,
              width: getProportionateScreenWidth(40),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              widget.text,
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: getProportionateScreenWidth(16),
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}