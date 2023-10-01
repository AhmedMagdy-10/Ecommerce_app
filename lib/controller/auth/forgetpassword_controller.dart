import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:get/get.dart';

class ForgetPassword extends GetxController {
  login() {}

  goToVerifyCode() {
    Get.toNamed(AppRoute.verifyCode);
  }
}
