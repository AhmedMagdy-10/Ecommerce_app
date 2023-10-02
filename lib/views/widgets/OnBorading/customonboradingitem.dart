import 'package:ecommerce_app/controller/onboradingcontroller.dart';
import 'package:ecommerce_app/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOnboradItem extends GetView<OnboradingController> {
  const CustomOnboradItem({super.key, required this.onboradController});
  final PageController onboradController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      controller: onboradController,
      itemCount: onBoradingList.length,
      onPageChanged: (index) {
        controller.nextPage(index);
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(
              onBoradingList[index].title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              child: Image.asset(
                onBoradingList[index].image,
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoradingList[index].body,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  fontSize: 17,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        );
      },
    );
  }
}
