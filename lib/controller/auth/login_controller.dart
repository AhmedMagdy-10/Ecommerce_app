import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  login() {}

  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
