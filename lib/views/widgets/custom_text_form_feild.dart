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
      this.onPressedSuffixIcon,
      this.keyboardType});
  final TextEditingController controller;
  final void Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget label;

  final bool secure;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function()? onPressedSuffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: keyboardType,
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
          label: label,
          suffixIcon: IconButton(
            onPressed: onPressedSuffixIcon,
            icon: suffixIcon!,
            padding: EdgeInsets.zero,
          ),
          prefixIcon: prefixIcon,
        ));
  }
}
