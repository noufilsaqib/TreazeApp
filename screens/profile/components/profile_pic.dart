import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  File _profilePic;
  final picker = ImagePicker();

  Future getImageFromCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedImage != null) {
        _profilePic = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _profilePic = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final image = _profilePic != null
      ? buildImage()
      : SvgPicture.asset("assets/icons/carbon-user.svg", color: kSecondaryColor);

    return GestureDetector(
      onTap: () {
        buildShowDialog(context);
      },
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
        height: getProportionateScreenWidth(100),
        width: getProportionateScreenWidth(100),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,0),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.5),
            ),
          ],
        ),
        child: image,
      ),
    );
  }

  ClipOval buildImage() {
    return ClipOval(
      child: Image(
        image: FileImage(_profilePic),
        fit: BoxFit.cover,
        width: getProportionateScreenWidth(100),
        height: getProportionateScreenWidth(100),
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
      context: context, 
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            height: getProportionateScreenHeight(145),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(10),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: getProportionateScreenWidth(500),
                    height: getProportionateScreenWidth(50),
                    child: TextButton(
                      child: Text(
                        "Take new photo",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(14),
                          letterSpacing: 1.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        getImageFromCamera();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Divider(thickness: 1),
                  SizedBox(
                    width: getProportionateScreenWidth(500),
                    height: getProportionateScreenWidth(50),
                    child: TextButton(
                      child: Text(
                        "Choose from gallery",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: getProportionateScreenWidth(14),
                          letterSpacing: 1.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        getImageFromGallery();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}