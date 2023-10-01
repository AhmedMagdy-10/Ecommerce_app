import 'package:flutter/material.dart';

class CustomBodyContentAuth extends StatelessWidget {
  const CustomBodyContentAuth({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.grey,
            ));
  }
}
