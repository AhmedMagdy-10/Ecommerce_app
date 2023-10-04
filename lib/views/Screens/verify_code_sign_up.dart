import 'package:ecommerce_app/controller/auth/verify_code_sign_up_contoller.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';

import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';
import 'package:ecommerce_app/views/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpController controller =
        Get.put(VerifyCodeSignUpController());
    // final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Verification '),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 20, horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const CustomTitleContentAuth(title: 'Check Code'),
              const SizedBox(
                height: 15,
              ),
              const CustomBodyContentAuth(
                  text: 'Please Enter Digit Code that Send to ahmed@gmail.com'),
              const SizedBox(
                height: 20,
              ),
              OTPTextField(
                length: 5,
                width: MediaQuery.of(context).size.width,
                outlineBorderRadius: 14,
                fieldWidth: 50,
                style: const TextStyle(
                  fontSize: 17,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  controller.goToSignIn();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
