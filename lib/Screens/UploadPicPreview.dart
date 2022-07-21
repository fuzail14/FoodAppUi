import 'dart:io';

import 'package:flutter/material.dart';

import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/ConstantText.dart';
import 'package:foodappofficework/Utils/backButton.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:foodappofficework/Utils/container.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';

class UploadPicPreview extends StatelessWidget {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    imageFile = Get.arguments;

    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage('assets/splashpic.png'),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.040,
                ),
                child: Column(
                  children: [
                    backbutton(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.050,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.0012,
                          right: MediaQuery.of(context).size.width * 0.290),
                      child: Text(
                        ConstantText.uploadphoto,
                        style: color.Fillin,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.270),
                      child: Text(
                        ConstantText.thisdata,
                        style: color.KeepMe,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.040,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.010,
                          left: MediaQuery.of(context).size.width * 0.020),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.700,
                        height: MediaQuery.of(context).size.height * 0.260,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.700,
                              height:
                                  MediaQuery.of(context).size.height * 0.260,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.file(
                                imageFile!,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.600,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.cancel),
                                  onPressed: () {},
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.260,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: styleofButton.green,
                          borderRadius: styleofButton.iraduis,
                          gradient: styleofButton.nextbuttoncolor),
                      child: MaterialButton(
                        height: styleofButton.iheight,
                        minWidth: styleofButton.iwidth,
                        onPressed: () {},
                        child: Text(
                          'Next',
                          style: styleofButton.textstyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  getFromGallery(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile != null) {
      print('file picked: $pickedFile');

      imageFile = File(pickedFile.path);
      print('pic path $imageFile');
    }
  }

  getFromCamera(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      print('file picked: $pickedFile');

      imageFile = File(pickedFile.path);
      print('pic path $imageFile');
    }
  }
}
