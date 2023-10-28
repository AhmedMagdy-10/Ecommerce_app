import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Mymiddleware extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getBool("onboarding") == true) {
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
