import 'package:get/get.dart';

class passwordcontroller extends GetxController {
  static bool passwordvisible = true;
  void visibiltypass() {
    passwordvisible = !passwordvisible;
    update();
  }

  static String? passwordPattern(var value) {
    print('password pattern..');
    if (value == null || value.trim().isEmpty) {
      print('first if');

      String message = 'Please enter your passwod';
      return message;
    }

    if (!RegExp(r'^(?=.*[0-9]).{2,}$').hasMatch(value)) {
      return 'Please enter a Numeric Value';
    }
    if (!RegExp(r'^(?=.*[A-Z]).{1,}$').hasMatch(value)) {
      return 'Please enter a Alpha Value';
    }
    if (!RegExp(r'^(?=.*[a-z]).{1,}$').hasMatch(value)) {
      return 'Please enter a Small Value';
    }
    if (!RegExp(r'^(?=.*[!@#\$&*~]).{1,}$').hasMatch(value)) {
      return 'Please enter a Sepcial Character';
    }

    return null;
  }
}
