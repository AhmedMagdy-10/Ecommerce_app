import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:ecommerce_app/core/localization/change_lang.dart';
import 'package:ecommerce_app/views/widgets/language/custom_button_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocaleContrroller> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonLanguage(
              onPressed: () {
                controller.chaneLang('ar');
                Get.toNamed(AppRoute.onBorading);
              },
              text: 'ar'.tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonLanguage(
              onPressed: () {
                controller.chaneLang('en');
                Get.toNamed(AppRoute.onBorading);
              },
              text: "en".tr,
            ),
          ],
        ),
      ),
    );
  }
}
