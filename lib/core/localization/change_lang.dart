import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleContrroller extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  chaneLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
