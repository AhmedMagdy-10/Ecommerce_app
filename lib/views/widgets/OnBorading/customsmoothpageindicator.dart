import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPage extends StatelessWidget {
  const CustomSmoothPage({super.key, required this.onboradController});
  final PageController onboradController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SmoothPageIndicator(
        controller: onboradController,
        count: onBoradingList.length,
        effect: const ExpandingDotsEffect(
          dotHeight: 8,
          dotWidth: 8,
          spacing: 10,
          expansionFactor: 4,
          activeDotColor: kprimaryColor,
        ),
      ),
    );
  }
}
