import 'package:ecommerce_app/core/constant/routes_name.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  // late TextEditingController emailController = TextEditingController();

  // login() {
  //   if (formKey.currentState?.validate() ?? false) {
  //     print('Valid');
  //   } else {
  //     print('Not Valid');
  //   }
  // }

  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
