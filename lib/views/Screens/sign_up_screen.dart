import 'package:ecommerce_app/controller/auth/sign_up.dart';
import 'package:ecommerce_app/core/constant/colors.dart';

import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';

import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';
import 'package:ecommerce_app/views/widgets/auth/sign_in_or_up.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.grey,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 20, horizontal: 30),
          child: Column(children: [
            const CustomTitleContentAuth(title: 'Welcome Back'),
            const SizedBox(
              height: 15,
            ),
            const CustomBodyContentAuth(
                text:
                    'Sign In With Your Email And Password Or Continue With Social Medial'),
            const SizedBox(
              height: 60,
            ),
            CustomTextFormField(
              hintText: 'Enter Your UserName',
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
              hintText: 'Enter Your Phone',
              controller: phoneController,
              validator: (data) {
                if (data!.isEmpty) {
                  return 'Phone is required';
                } else {
                  return '';
                }
              },
              label: const Text('Phone'),
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
              label: const Text('Password'),
              suffixIcon: const Icon(
                Icons.lock,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'forget Password',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButtonOnBorading(
              text: 'Continue',
              color: kprimaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            SignInOrUp(
                text: " have an account ? ",
                onTap: () {
                  controller.goToSignIn();
                },
                buttonText: 'SignIn'),
          ]),
        ),
      ),
    );
  }
}
