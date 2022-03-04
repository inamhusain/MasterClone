import 'package:flutter/services.dart';
import 'package:flutter_master_temp/src/utils/string_const.dart';

class AppValidation {
  static String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter name";
    } else if (!RegExp(StringConst.nameExpression).hasMatch(value)) {
      return "Enter valid name";
    }
  }

  static String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter an email";
    } else if (!RegExp(StringConst.emailExpression).hasMatch(value)) {
      return "Enter valid email";
    }
  }

  static String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter a password";
    } else if (!RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])').hasMatch(value)) {
      return "Password must contain UPPER/lowercase,\n special characters and numbers.";
    } else if (value.length <= 8) {
      return "Password must be getter then 8 letter";
    }
  }

  static String? mobileNoValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter mobile no";
    } else if (value.length <= 10) {
      return "Mobile no must be 10 digit";
    }
  }

  static String? addressValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter address";
    } else if (value.length <= 50) {
      return "Address more than 50 characters";
    }
  }

  static List<TextInputFormatter>? passwordInputFormatter =
      <TextInputFormatter>[
    FilteringTextInputFormatter.allow(
        RegExp(StringConst.passwordInputValidation)),
  ];
}
