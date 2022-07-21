import 'package:flutter/material.dart';
import 'package:foodappofficework/Screens/onboardingsecond.dart';
import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/ConstantText.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:get/get.dart';

class OnBoardingFirst extends StatelessWidget {
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
                'assets/onboardf.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.080,
            ),
            Text(
              ConstantText.Find,
              style: color.Findyour,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            Text(ConstantText.Food, style: color.FoodHere),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Text(ConstantText.Here,
                textAlign: TextAlign.center, style: color.Hereyoucan),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            Text('taste and color enjoy',
                textAlign: TextAlign.center, style: color.Hereyoucan),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.080,
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
                  Get.to(OnBoardingFirstSecond());
                },
                child: Text('Next', style: styleofButton.textstyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
