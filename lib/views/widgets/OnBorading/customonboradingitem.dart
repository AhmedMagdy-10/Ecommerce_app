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
            Text(onBoradingList[index].title,
                style: Theme.of(context).textTheme.titleLarge),
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
                style: Theme.of(context).textTheme.bodyMedium,
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
