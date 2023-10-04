import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  // late TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  login() {
    if (formKey.currentState?.validate() ?? false) {
      print('Valid');
    } else {
      print('Not Valid');
    }
  }

  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  bool isPassword = true;

  showPassword() {
    isPassword = !isPassword;
    update();
  }
}
