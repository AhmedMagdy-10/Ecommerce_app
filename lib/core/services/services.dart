import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> initial() async {
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

appServices() async {
  await Get.putAsync(() => MyServices().initial());
}
