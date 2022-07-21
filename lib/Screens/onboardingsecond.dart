import 'package:flutter/material.dart';
import 'package:foodappofficework/Screens/Signup.dart';

import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/ConstantText.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:get/get.dart';

class OnBoardingFirstSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/onbsec.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.080,
            ),
            Text(ConstantText.FoodN, style: color.Findyour),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Text(ConstantText.Comfort,
                textAlign: TextAlign.start, style: color.Findyour),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.050,
            ),
            Text(
              ConstantText.Enjoy,
              textAlign: TextAlign.center,
              style: color.Hereyoucan,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            Text(
              'your doorstep',
              textAlign: TextAlign.center,
              style: color.Hereyoucan,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.200,
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
                  Get.to(SignUp());
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
    );
  }
}
