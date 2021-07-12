import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:treaze_app/components/rounded_button.dart';
import 'package:treaze_app/components/social_card.dart';
import 'package:treaze_app/size_config.dart';

import '../../../constants.dart';

class HintImagePicker extends StatefulWidget {
  const HintImagePicker({
    Key key,
  }) : super(key: key);

  @override
  _HintImagePickerState createState() => _HintImagePickerState();
}

class _HintImagePickerState extends State<HintImagePicker> {
  File _image;
  final picker = ImagePicker();
  var fileSize;

  Future getImageFromCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
        final bytes = _image.readAsBytesSync().lengthInBytes;
        fileSize = (bytes / 1024).toStringAsFixed(2);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
        final bytes = _image.readAsBytesSync().lengthInBytes;
        fileSize = (bytes / 1024).toStringAsFixed(2);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialCard(
              icon: "assets/icons/akar-attach.svg",
              color: kPrimaryColor,
              press: () => getImageFromGallery(),
            ),
            RoundedButton(
              text: "TAKE PHOTO",
              color: kPrimaryColor,
              textColor: Colors.white, 
              width: 0.5,
              press: () => getImageFromCamera(),
            ),
            SocialCard(
              icon: "assets/icons/akar-chevronright.svg",
              color: kPrimaryColor,
              press: () {
                if (_image != null) {
                  buildShowDialog(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please select a photo'),
                    )
                  );
                }
              }
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(30),
            vertical: getProportionateScreenWidth(30),
          ),
          child: Dismissible(
            key: Key(_image.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.delete_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: getProportionateScreenWidth(60),
                  constraints: BoxConstraints(maxWidth: getProportionateScreenWidth(200)),
                  child: _image == null
                    ? Text('')
                    : Image.file(_image),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: _image == null
                          ? Text('')
                          : Text(
                              'Image Selected',
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: getProportionateScreenWidth(16),
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0,
                              ),
                            ),
                    ),
                    SizedBox(height: getProportionateScreenWidth(10)),
                    Container(
                      child: _image == null
                          ? Text('')
                          : Text(
                              '$fileSize KB',
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: getProportionateScreenWidth(14),
                                letterSpacing: 1.0,
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            ),
            // onDismissed: (direction) {
            //   setState(() {
            //     pickedImage.removeAt(index);
            //   });
            // },
          ),
        ),
      ], 
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
            height: getProportionateScreenHeight(270),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30),
                vertical: getProportionateScreenWidth(30),
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.check_circle,
                    color: kPrimaryColor,
                    size: 60,
                  ),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  Text(
                    "All good!",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Text(
                    "Your hint photo was sent to Treaźe. Please check the Treaźe Chat to receive your free hint.",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: getProportionateScreenWidth(14),
                      letterSpacing: 1.0,
                    ),
                    textAlign: TextAlign.center,
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