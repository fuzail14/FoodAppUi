import 'package:flutter/material.dart';
import 'package:get/get.dart';

class backbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.020),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.160,
          height: MediaQuery.of(context).size.height * 0.065,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Color(0xffF9A84D).withOpacity(0.1)),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xffDA6317),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
      ),
    );
  }
}
