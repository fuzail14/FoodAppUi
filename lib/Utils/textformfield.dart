import 'package:flutter/material.dart';
import 'package:foodappofficework/Utils/colors.dart';

class textformfields {
  static final outlineborderoffield = OutlineInputBorder(
    borderSide: BorderSide(
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(15.0),
  );

  static final enabledborderoffield = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(color: Color(0xffF4F4F4)),
  );
  static final inputdecoffield = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(color: Color(0xffF4F4F4)),
    ),
    filled: true,
    fillColor: Color(0xffFFFFFF),
    labelText: 'Email',
    border: textformfields.outlineborderoffield,
  );

  static final prefixicon = BoxDecoration(
      gradient: color.ForgotPasscolor, backgroundBlendMode: BlendMode.screen);

  static final passiconcolor = BoxDecoration(
      gradient: color.passiconeye, backgroundBlendMode: BlendMode.screen);
}
