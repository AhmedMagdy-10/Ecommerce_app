import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/dataSource/static/static.dart';
import 'package:get/get.dart';

class OnboradingController extends GetxController {
  MyServices myServices = Get.find();
  bool isLast = false;
  nextPage(int index) {
    if (index == onBoradingList.length - 1) {
      myServices.sharedPreferences.setBool("onboarding", true);
      isLast = true;
      update();
    } else {
      isLast = false;
    }
  }
}
