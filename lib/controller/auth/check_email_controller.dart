import 'package:ecommerce_app/core/constant/routes_name.dart';

import 'package:get/get.dart';

class CheckEmailController extends GetxController {
  checkEmail() {}

  goToVerifyCode() {
    Get.toNamed(AppRoute.verifyCode);
  }
}
