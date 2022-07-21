import 'package:flutter/material.dart';

import 'package:foodappofficework/Screens/PaymentMethod.dart';
import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/ConstantText.dart';
import 'package:foodappofficework/Utils/backButton.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:foodappofficework/Utils/textformfield.dart';
import 'package:get/get.dart';

class SignUpProcess extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.150),
                      child: Text(
                        ConstantText.Fillin,
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
                      height: MediaQuery.of(context).size.height * 0.055,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 25.0, right: 25.0),
                      child: TextField(
                        style: color.Hereyoucan,
                        decoration: InputDecoration(
                            enabledBorder: textformfields.enabledborderoffield,
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            labelText: 'First Name',
                            border: textformfields.outlineborderoffield),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.022,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: TextField(
                        style: color.Hereyoucan,
                        keyboardType: TextInputType.emailAddress,
                        controller: email,
                        decoration: InputDecoration(
                          enabledBorder: textformfields.enabledborderoffield,
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          labelText: 'Last Name',
                          border: textformfields.outlineborderoffield,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.022,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: TextField(
                        style: color.Hereyoucan,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            labelText: 'Mobile Number',
                            border: textformfields.outlineborderoffield,
                            enabledBorder: textformfields.enabledborderoffield),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
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
                          Get.to(PaymentMethod());
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
