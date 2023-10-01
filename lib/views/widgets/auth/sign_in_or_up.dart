import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class SignInOrUp extends StatelessWidget {
  const SignInOrUp(
      {super.key, required this.text, required this.buttonText, this.onTap});
  final String text;
  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        InkWell(
          onTap: onTap,
          child: Text(
            buttonText,
            style: const TextStyle(
              color: kprimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
