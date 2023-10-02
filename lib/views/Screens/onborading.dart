import 'package:ecommerce_app/controller/onboradingcontroller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/constant/routes_name.dart';

import 'package:ecommerce_app/views/widgets/OnBorading/custombutton.dart';
import 'package:ecommerce_app/views/widgets/OnBorading/customonboradingitem.dart';
import 'package:ecommerce_app/views/widgets/OnBorading/customsmoothpageindicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBorading extends StatelessWidget {
  const OnBorading({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboradingController());
    PageController onboradController = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CustomOnboradItem(
                onboradController: onboradController,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomSmoothPage(onboradController: onboradController),
                  const Spacer(
                    flex: 2,
                  ),
                  GetBuilder<OnboradingController>(
                    builder: (controller) {
                      return CustomButtonOnBorading(
                        text: "8".tr,
                        color: kprimaryColor,
                        onTap: () {
                          if (controller.isLast) {
                            Get.offAllNamed(AppRoute.login);
                          }

                          onboradController.nextPage(
                              duration: const Duration(milliseconds: 750),
                              curve: Curves.fastLinearToSlowEaseIn);
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
