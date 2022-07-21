import 'dart:async';

import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:foodappofficework/Screens/onboardfirst.dart';

import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.to(OnBoardingFirst()));
  }

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
          body: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.305,
              left: MediaQuery.of(context).size.width * 0.07,
              // bottom: MediaQuery.of(context).size.
            ),
            child: ListView(
              children: [
                Center(
                  child: Image.asset(
                    'assets/Logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 2.0),
                GradientText(
                  'FoodNinja',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Viga',
                  ),
                  colors: [
                    Color(0xff53E88B),
                    Color(0xff15BE77),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  'Deliever Favourite Food',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'inter',
                      color: Color(0xff09051C)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
