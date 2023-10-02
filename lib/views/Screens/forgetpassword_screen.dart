import 'package:ecommerce_app/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';

import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';

import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';
import 'package:ecommerce_app/views/widgets/custom_app_bar.dart';

import 'package:ecommerce_app/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController controller = Get.put(ForgetPasswordController());
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: '39'.tr),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 20, horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const CustomTitleContentAuth(title: 'Check Email'),
              const SizedBox(
                height: 15,
              ),
              const CustomBodyContentAuth(
                  text:
                      'Write Your Email to can reset Your Password again by Verification Code '),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                hintText: 'Enter Your Email',
                controller: emailController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Email is required';
                  } else {
                    return '';
                  }
                },
                label: const Text('Email'),
                suffixIcon: const Icon(
                  Icons.email_outlined,
                ),
              ),
              const SizedBox(height: 20),
              CustomButtonOnBorading(
                text: 'Check',
                color: kprimaryColor,
                onTap: () {
                  controller.goToVerifyCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
