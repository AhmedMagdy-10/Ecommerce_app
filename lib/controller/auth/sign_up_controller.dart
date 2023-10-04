import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  signUp() {
    if (formKey.currentState?.validate() ?? false) {
      Get.offNamed(AppRoute.verifyCodeSignUp);
      print('Valid');
    } else {
      print('Not Valid');
    }
  }

  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
