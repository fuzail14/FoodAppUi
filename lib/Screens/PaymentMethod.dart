import 'package:flutter/material.dart';
import 'package:foodappofficework/Screens/UploadPhoto.dart';

import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/ConstantText.dart';
import 'package:foodappofficework/Utils/backButton.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:foodappofficework/Utils/container.dart';

import 'package:get/get.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  top: MediaQuery.of(context).size.height * 0.060,
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
                        ConstantText.payment,
                        style: color.Fillin,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.180),
                      child: Text(
                        ConstantText.thisdata,
                        style: color.KeepMe,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.015,
                          left: MediaQuery.of(context).size.width * 0.020),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.860,
                        height: MediaQuery.of(context).size.height * 0.130,
                        decoration: CustomContainer.containerDecoration,
                        child: Container(
                          child: Image.asset(
                            'assets/paypal.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.015,
                          left: MediaQuery.of(context).size.width * 0.020),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.860,
                        height: MediaQuery.of(context).size.height * 0.130,
                        decoration: CustomContainer.containerDecoration,
                        child: Container(
                          child: Image.asset(
                            'assets/visa.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.015,
                          left: MediaQuery.of(context).size.width * 0.020),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.860,
                        height: MediaQuery.of(context).size.height * 0.130,
                        decoration: CustomContainer.containerDecoration,
                        child: Container(
                          child: Image.asset(
                            'assets/Payoneer.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.090,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: styleofButton.green,
                          borderRadius: styleofButton.iraduis,
                          gradient: styleofButton.nextbuttoncolor),
                      child: MaterialButton(
                        height: styleofButton.iheight,
                        minWidth: styleofButton.iwidth,
                        onPressed: () {
                          Get.to(UploadPhoto());
                        },
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
}
