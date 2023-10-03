import 'package:flutter/material.dart';

Widget reusedTextField({
  Widget? label,
  required TextEditingController? controller,
  bool secure = false,
  IconData? suffixIcon,
  Widget? prefix,
  Function(String)? onChanged,
  Function()? suffixPressed,
  Function(String)? onSubmitted,
  String? Function(String?)? validator,
  String? hintText,
  TextInputType? keyboardType,
}) =>
    TextFormField(
        controller: controller,
        onFieldSubmitted: onSubmitted,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: secure,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: suffixPressed,
          ),
          label: label,
          prefixIcon: prefix,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(12)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(12)),
        ));
