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
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          ),
          fontFamily: 'GT Sectra Fine',
          textTheme: TextTheme(
              titleLarge: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              headlineLarge: const TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.w500,
                height: 1.5,
                fontSize: 17,
                color: Colors.grey[700],
              ),
              labelLarge: TextStyle(
                color: Colors.grey[800],
              ))),
      debugShowCheckedModeBanner: false,
      home: const LanguageScreen(),
      routes: routes,
    );
  }
}
