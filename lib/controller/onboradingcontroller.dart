import 'package:ecommerce_app/data/dataSource/static/static.dart';
import 'package:get/get.dart';

class OnboradingController extends GetxController {
  bool isLast = false;
  nextPage(int index) {
    if (index == onBoradingList.length - 1) {
      isLast = true;
      update();
    } else {
      isLast = false;
    }
  }
}
