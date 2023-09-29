import 'package:flutter/material.dart';

class CustomButtonOnBorading extends StatelessWidget {
  const CustomButtonOnBorading(
      {super.key, required this.text, required this.color, this.onTap});
  final VoidCallback? onTap;
  final Color? color;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Center(
            child: Text(
          '${text}',
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
