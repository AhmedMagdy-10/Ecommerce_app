import 'package:ecommerce_app/core/constant/colors.dart';

import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/auth/custom_body_content.dart';

import 'package:ecommerce_app/views/widgets/auth/custom_title_content_auth.dart';

import 'package:ecommerce_app/views/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.grey,
              ),
        ),
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
              const CustomTitleContentAuth(title: 'Check Email'),
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
              const CustomButtonOnBorading(
                text: 'Check',
                color: kprimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
