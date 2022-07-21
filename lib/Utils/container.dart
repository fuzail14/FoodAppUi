import 'package:flutter/material.dart';

class CustomContainer {
  static final containerDecoration = BoxDecoration(
    color: Colors.blue,
    border: Border(
      top: BorderSide(color: Color(0xffF4F4F4)),
      left: BorderSide(color: Color(0xffF4F4F4)),
      bottom: BorderSide(color: Color(0xffF4F4F4)),
      right: BorderSide(color: Color(0xffF4F4F4)),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.white,
      ),
    ],
    borderRadius: BorderRadius.circular(15),
  );
}
