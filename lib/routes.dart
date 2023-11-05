import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:ecommerce_app/core/middleware/mymiddleware.dart';
import 'package:ecommerce_app/views/Screens/check_email.dart';
import 'package:ecommerce_app/views/Screens/forgetpassword_screen.dart';
import 'package:ecommerce_app/views/Screens/home_page.dart';
import 'package:ecommerce_app/views/Screens/language.dart';
import 'package:ecommerce_app/views/Screens/login_screen.dart';
import 'package:ecommerce_app/views/Screens/onborading.dart';
import 'package:ecommerce_app/views/Screens/reset_password_screen.dart';
import 'package:ecommerce_app/views/Screens/sign_up_screen.dart';

import 'package:ecommerce_app/views/Screens/verify_screen.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const LanguageScreen(), middlewares: [
    Mymiddleware(),
  ]),
  GetPage(
    name: AppRoute.onBorading,
    page: () => const OnBorading(),
  ),
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
  GetPage(name: AppRoute.signUp, page: () => const RegisterScreen()),
  GetPage(name: AppRoute.homeScreen, page: () => const HomeScreen()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.checkEmail, page: () => const CheckEmail()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
];

// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoute.onBorading: (context) => const OnBorading(),
//   AppRoute.login: (context) => const LoginScreen(),
//   AppRoute.signUp: (context) => const RegisterScreen(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.verifyCode: (context) => const VerifyCode(),
//   AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
//   AppRoute.checkEmail: (context) => const CheckEmail(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
// };
