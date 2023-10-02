import 'package:ecommerce_app/core/localization/change_lang.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/views/Screens/language.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await appServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleContrroller contrroller = Get.put(LocaleContrroller());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: contrroller.language,
      theme: contrroller.appTheme,
      debugShowCheckedModeBanner: false,
      home: const LanguageScreen(),
      routes: routes,
    );
  }
}
