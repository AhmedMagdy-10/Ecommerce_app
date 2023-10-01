import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage(
        'assets/image/LogoApp.jpg',
      ),
      radius: 100,
    );
  }
}
