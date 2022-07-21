import 'package:flutter/material.dart';
import 'package:foodappofficework/Screens/Controller/passwordcontroller.dart';
import 'package:foodappofficework/Screens/signupprocess.dart';
import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:foodappofficework/Utils/textformfield.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignIn extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = new GlobalKey<FormState>();


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
            // shrinkWrap: true,
            // primary: true,
            //  physics: NeverScrollableScrollPhysics(),
            children: [
              Form(
                key: formKey,
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/Logo.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: GradientText(
                          'FoodNinja',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Viga',
                          ),
                          colors: [
                            Color(0xff53E88B),
                            Color(0xff15BE77),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.010),
                        child: Text(
                          'Deliever Favourite Food',
                          style: GoogleFonts.inter(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.070,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.010),
                        child: Text('Sign Up For Free', style: color.Findyour),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06,
                            right: MediaQuery.of(context).size.width * 0.06),
                        child: TextField(
                          style: color.Hereyoucan,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: MediaQuery.of(context).padding.left *
                                        12.0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Container(
                                    foregroundDecoration:
                                        textformfields.prefixicon,
                                    child: Icon(
                                      Icons.person,
                                    ),
                                  ),
                                ),
                              ),
                              enabledBorder:
                                  textformfields.enabledborderoffield,
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              labelText: 'Anamwp..|',
                              border: textformfields.outlineborderoffield),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06,
                            right: MediaQuery.of(context).size.width * 0.06),
                        child: TextFormField(
                          style: color.Hereyoucan,
                          keyboardType: TextInputType.emailAddress,
                          controller: email,
                          autovalidateMode: AutovalidateMode.onUserInteraction,


                          validator: (value) {
                            if (!GetUtils.isEmail(value!))
                              return "Email is not valid";
                            else {}
                          },
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: MediaQuery.of(context).padding.left *
                                      12.0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Container(
                                    foregroundDecoration:
                                        textformfields.prefixicon,
                                    child: Icon(Icons.email)),
                              ),
                            ),
                            enabledBorder: textformfields.enabledborderoffield,
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            labelText: 'Email',
                            border: textformfields.outlineborderoffield,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06,
                            right: MediaQuery.of(context).size.width * 0.06),
                        child: GetBuilder<passwordcontroller>(
                            init: passwordcontroller(),
                            builder: (controller) {
                              return TextFormField(
                                style: color.Hereyoucan,
                                keyboardType: TextInputType.emailAddress,
                                controller: password,
                                obscureText: passwordcontroller.passwordvisible,

                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,


 
                                decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .padding
                                                  .left *
                                              0.12),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Container(
                                          foregroundDecoration:
                                              textformfields.prefixicon,
                                          child: Icon(
                                            Icons.lock,
                                          ),
                                        ),
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Container(
                                        foregroundDecoration:
                                            textformfields.passiconcolor,
                                        child: IconButton(
                                          icon: Icon((passwordcontroller
                                                  .passwordvisible)
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            controller.visibiltypass();
                                          },
                                        ),
                                      ),
                                    ),

                                    filled: true,
                                    fillColor: Color(0xffFFFFFF),
                                    labelText: 'Password',
                                    border: textformfields.outlineborderoffield,
                                    enabledBorder:
                                        textformfields.enabledborderoffield),
                              );
                            }),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.030,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.022),
                                  child: Stack(children: [
                                    Container(
                                      decoration: new BoxDecoration(
                                        gradient: styleofButton.nextbuttoncolor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.check_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.013,
                                ),
                                Text(
                                  'Keep Me Signed In',
                                  style: color.KeepMe,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.022,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.070,
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.70,
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.022),
                                  child: Stack(children: [
                                    Container(
                                      decoration: new BoxDecoration(
                                        gradient: styleofButton.nextbuttoncolor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.check_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.013,
                                ),
                                Text(
                                  'Email Me About Special Pricing',
                                  style: color.KeepMe,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.012,
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
                            _save();
                          },
                          child: Text(
                            'Create Account',
                            style: styleofButton.textstyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0200,
                      ),
                      GradientText('Already Have An Account?',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'BentonSansMedium',
                              textBaseline: TextBaseline.ideographic),
                          colors: [Color(0xff53E88B), Color(0xff15BE77)]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void _save() async {
    if (this.formKey.currentState!.validate()) {
      formKey.currentState!.save();
    } else {
      return null;
    }
    Get.to(SignUpProcess());
  }
}
