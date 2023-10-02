import 'package:ecommerce_app/controller/auth/sign_up_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';

import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';

import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';
import 'package:ecommerce_app/views/widgets/auth/sign_in_or_up.dart';
import 'package:ecommerce_app/views/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: '17'.tr),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 20, horizontal: 30),
          child: Column(children: [
            CustomTitleContentAuth(title: '10'.tr),
            const SizedBox(
              height: 15,
            ),
            CustomBodyContentAuth(text: '24'.tr),
            const SizedBox(
              height: 60,
            ),
            CustomTextFormField(
              hintText: '23'.tr,
              controller: userNameController,
              validator: (data) {
                if (data!.isEmpty) {
                  return 'UserName is required';
                } else {
                  return '';
                }
              },
              label: const Text('UserName'),
              suffixIcon: const Icon(
                Icons.person,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: '12'.tr,
              controller: emailController,
              validator: (data) {
                if (data!.isEmpty) {
                  return 'Email is required';
                } else {
                  return '';
                }
              },
              label: Text('18'.tr),
              suffixIcon: const Icon(
                Icons.email_outlined,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: '22'.tr,
              controller: phoneController,
              validator: (data) {
                if (data!.isEmpty) {
                  return 'Phone is required';
                } else {
                  return '';
                }
              },
              label: Text('21'.tr),
              suffixIcon: const Icon(
                Icons.phone,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'Enter Your Password',
              controller: passwordController,
              validator: (data) {
                if (data!.isEmpty) {
                  return 'Password is required';
                } else {
                  return '';
                }
              },
              label: Text('19'.tr),
              suffixIcon: const Icon(
                Icons.lock,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonOnBorading(
              text: '17'.tr,
              onTap: () {
                controller.goToCheckEmail();
              },
              color: kprimaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            SignInOrUp(
                text: "25".tr,
                onTap: () {
                  controller.goToSignIn();
                },
                buttonText: '15'.tr),
          ]),
        ),
      ),
    );
  }
}
