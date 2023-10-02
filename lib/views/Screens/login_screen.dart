import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';

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
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Sign In'),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 20, horizontal: 30),
          child: Column(
            children: [
              const CustomLogoAuth(),
              const SizedBox(
                height: 15,
              ),
              const CustomTitleContentAuth(title: 'Welcome Back'),
              const SizedBox(
                height: 15,
              ),
              const CustomBodyContentAuth(
                  text:
                      'Sign In With Your Email And Password Or Continue With Social Medial'),
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
                label: const Text('Password'),
                suffixIcon: const Icon(
                  Icons.lock,
                ),
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
                    child: const Text(
                      'forget Password',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomButtonOnBorading(
                text: 'Sign In',
                color: kprimaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              SignInOrUp(
                text: "Don't have an account ? ",
                onTap: () {
                  controller.goToSignUp();
                },
                buttonText: "SignUp",
              )
            ],
          ),
        ),
      ),
    );
  }
}
