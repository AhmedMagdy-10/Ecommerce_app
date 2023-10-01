import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  login() {}

  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
