import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  const CustomButtonLanguage(
      {super.key, required this.onPressed, required this.text});

  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
