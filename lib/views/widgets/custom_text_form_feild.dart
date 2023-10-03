import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.onSubmitted,
      required this.validator,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      required this.label,
      this.secure = false,
      this.onPressed});
  final TextEditingController controller;
  final void Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget label;
  final bool secure;
  final String? hintText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: secure,
        onFieldSubmitted: onSubmitted,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 1, horizontal: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          label: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: label,
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: suffixIcon!,
            color: kprimaryColor,
          ),
          prefixIcon: prefixIcon,
        ));
  }
}
