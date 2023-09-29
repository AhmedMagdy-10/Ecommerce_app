import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:ecommerce_app/views/Screens/login_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const LoginScreen()
};