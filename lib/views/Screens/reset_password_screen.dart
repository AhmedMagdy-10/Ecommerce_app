import 'package:ecommerce_app/core/constant/colors.dart';

import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';

import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';
import 'package:ecommerce_app/views/widgets/custom_app_bar.dart';

import 'package:ecommerce_app/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController repasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Reset Password',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 20, horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const CustomTitleContentAuth(title: 'Create  new password'),
              const SizedBox(
                height: 15,
              ),
              const CustomBodyContentAuth(
                  text: 'Please Enter Your New Password'),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                hintText: 'Enter Your new Password',
                controller: passwordController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Password is required';
                  } else {
                    return '';
                  }
                },
                label: const Text('New Password'),
                suffixIcon: const Icon(
                  Icons.lock,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                hintText: 'Re Enter Your Password',
                controller: repasswordController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Password is required';
                  } else {
                    return '';
                  }
                },
                label: const Text('Confirm Password'),
                suffixIcon: const Icon(
                  Icons.lock,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 5),
                alignment: Alignment.topLeft,
                child: Text(
                  'Both passwords must match',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              const SizedBox(height: 20),
              const CustomButtonOnBorading(
                text: 'Reset Password',
                color: kprimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
