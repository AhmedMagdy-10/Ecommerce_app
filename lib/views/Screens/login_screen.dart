import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/functions/alert_exit_app.dart';
import 'package:ecommerce_app/core/functions/validator.dart';
import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_logo_auth.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';

import 'package:ecommerce_app/views/widgets/auth/sign_in_or_up.dart';
import 'package:ecommerce_app/views/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: '9'.tr),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 20, horizontal: 30),
              child: Column(
                children: [
                  const CustomLogoAuth(),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTitleContentAuth(title: '10'.tr),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomBodyContentAuth(text: '11'.tr),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: '12'.tr,
                    controller: emailController,
                    validator: (value) {
                      return validatorInput(value!, "email", 5, 50);
                    },
                    label: Text('18'.tr),
                    suffixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  const SizedBox(height: 20),
                  GetBuilder<LoginController>(
                    builder: (controller) {
                      return CustomTextFormField(
                          hintText: 'Enter Your Password',
                          secure: controller.isPassword,
                          controller: passwordController,
                          validator: (value) {
                            return validatorInput(value!, "password", 5, 20);
                          },
                          label: Text('19'.tr),
                          onPressedSuffixIcon: () {
                            controller.showPassword();
                          },
                          suffixIcon: controller.isPassword
                              ? const Icon(
                                  Icons.lock_outline,
                                )
                              : const Icon(
                                  Icons.lock_open,
                                ));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                        child: Text(
                          '14'.tr,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButtonOnBorading(
                    text: '15'.tr,
                    color: kprimaryColor,
                    onTap: () {
                      controller.goToHomeScreen();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SignInOrUp(
                    text: "16".tr,
                    onTap: () {
                      controller.goToSignUp();
                    },
                    buttonText: "17".tr,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
