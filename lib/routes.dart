import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:ecommerce_app/views/Screens/login_screen.dart';
import 'package:ecommerce_app/views/Screens/onborading.dart';
import 'package:ecommerce_app/views/Screens/sign_up_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const LoginScreen(),
  AppRoute.signUp: (context) => const RegisterScreen(),
  AppRoute.onBorading: (context) => const OnBorading(),
};
