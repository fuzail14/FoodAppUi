import 'package:flutter/material.dart';
import 'package:foodappofficework/Screens/signin.dart';
import 'package:foodappofficework/Utils/ButtonStyle.dart';
import 'package:foodappofficework/Utils/colors.dart';
import 'package:foodappofficework/Utils/textformfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignUp extends StatelessWidget {
  final formKey = new GlobalKey<FormState>();
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
          body: ListView(children: [
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
                      GradientText(
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
                      Text(
                        'Deliever Favourite Food',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.070,
                      ),
                      Text('Login To Your Account', style: color.Findyour),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.080,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06,
                            right: MediaQuery.of(context).size.width * 0.06),
                        child: SingleChildScrollView(
                          child: TextFormField(
                            controller: email,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (!GetUtils.isEmail(value!))
                                return "Email is not valid";
                              else {}
                            },
                            style: color.Hereyoucan,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              enabledBorder:
                                  textformfields.enabledborderoffield,
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              labelText: 'Email',
                              border: textformfields.outlineborderoffield,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.019,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06,
                            right: MediaQuery.of(context).size.width * 0.06),
                        child: SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: TextFormField(
                            controller: password,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Please enter your passwod';
                              }
                              // Check if the entered email has the right format
                              if (!RegExp(r'^(?=.*[0-9]).{2,}$')
                                  .hasMatch(value)) {
                                return 'Please enter a Numeric Value';
                              }
                              if (!RegExp(r'^(?=.*[A-Z]).{1,}$')
                                  .hasMatch(value)) {
                                return 'Please enter a Alpha Value';
                              }
                              if (!RegExp(r'^(?=.*[a-z]).{1,}$')
                                  .hasMatch(value)) {
                                return 'Please enter a Small Value';
                              }
                              if (!RegExp(r'^(?=.*[!@#\$&*~]).{1,}$')
                                  .hasMatch(value)) {
                                return 'Please enter a Sepcial Character';
                              }

                              // Return null if the entered email is valid

                              return null;
                            },
                            style: color.Hereyoucan,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              enabledBorder:
                                  textformfields.enabledborderoffield,
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              labelText: 'Password',
                              border: textformfields.outlineborderoffield,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text('Or Continue With', style: color.OrContinue),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.060,
                      ),
                      Row(
                        children: [
                          Container(
                            // color: Colors.red,
                            height: MediaQuery.of(context).size.width * 0.142,
                            width: MediaQuery.of(context).size.width * 0.380,
                            margin: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.width * 0.068),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.079,
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.025),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/fb.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.013,
                                ),
                                Text(
                                  'Facebook',
                                  style: color.FacebookC,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10.8,
                          ),
                          Container(
                            //color: Colors.blue,
                            height: MediaQuery.of(context).size.height * 0.057,

                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffFFFF), blurRadius: 5)
                                ]
                                // color: Colors.lime,
                                ),

                            //width: MediaQuery.of(context).size.width * 0.380,
                            // margin: EdgeInsets.only(
                            //     left:
                            //         MediaQuery.of(context).size.width * 0.0998),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.022),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                      'assets/google.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.013,
                                ),
                                Text(
                                  'Google',
                                  style: color.FacebookC,
                                ),
                              ],
                            ),
                          ),
                        ],
                        //complete row of fb and google
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      GradientText('Forgot Your Password?',
                          style: TextStyle(
                            fontFamily: 'BentonSansMedium',
                            decoration: TextDecoration.underline,
                          ),
                          colors: [Color(0xff53E88B), Color(0xff15BE77)]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.00800,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: styleofButton.green,
                            borderRadius: styleofButton.iraduis,
                            gradient: styleofButton.nextbuttoncolor),
                        child: MaterialButton(
                          height: MediaQuery.of(context).size.height * 0.08,
                          minWidth: MediaQuery.of(context).size.width * 0.392,
                          onPressed: () {
                            _save();
                          },
                          child: Text(
                            'Login',
                            style: styleofButton.textstyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ]),
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
    Get.to(SignIn());
  }
}
