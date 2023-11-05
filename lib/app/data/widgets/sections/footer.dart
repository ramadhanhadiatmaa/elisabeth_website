import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../constants/color.dart';
import '../tools/button_text.dart';
import '../tools/text_widget.dart';

class Footers extends StatelessWidget {
  const Footers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: cDarkBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  const TextWidgetMon(
                    title: "©Copyright 2023, Rumah Sakit Umum Santa Elisabeth",
                    size: 12,
                    weight: FontWeight.w500,
                    color: cWhite,
                  ),
                  const Spacer(),
                  ButtonText(
                    title: "Terms and Conditions",
                    press: () => Get.toNamed(Routes.terms),
                    color: cWhite,
                    size: 12,
                    weight: FontWeight.w400,
                  ),
                  const TextWidgetMon(
                    title: "|",
                    size: 12,
                    weight: FontWeight.w500,
                    color: cWhite,
                  ),
                  ButtonText(
                    title: "Privacy Policy",
                    press: () => Get.toNamed(Routes.privacy),
                    color: cWhite,
                    size: 12,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      tablet: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: cDarkBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const TextWidgetMon(
                    title: "©Copyright 2023, Rumah Sakit Umum Santa Elisabeth",
                    size: 12,
                    weight: FontWeight.w500,
                    color: cWhite,
                  ),
                  const Spacer(),
                  ButtonText(
                    title: "Terms and Conditions",
                    press: () => Get.toNamed(Routes.terms),
                    color: cWhite,
                    size: 10,
                    weight: FontWeight.w300,
                  ),
                  const TextWidgetMon(
                    title: "|",
                    size: 12,
                    weight: FontWeight.w500,
                    color: cWhite,
                  ),
                  ButtonText(
                    title: "Privacy Policy",
                    press: () => Get.toNamed(Routes.privacy),
                    color: cWhite,
                    size: 10,
                    weight: FontWeight.w300,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      mobile: Container(
        width: MediaQuery.sizeOf(context).width,
        color: cDarkBlue,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidgetMon(
                title: "©Copyright 2023, RSU Santa Elisabeth",
                size: 10,
                weight: FontWeight.w500,
                color: cWhite,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonTextMobile(
                    title: "Terms and Conditions",
                    press: () => Get.toNamed(Routes.terms),
                    color: cWhite,
                    size: 10,
                    weight: FontWeight.w300,
                  ),
                  const TextWidgetMon(
                    title: "|",
                    size: 12,
                    weight: FontWeight.w500,
                    color: cWhite,
                  ),
                  ButtonTextMobile(
                    title: "Privacy Policy",
                    press: () => Get.toNamed(Routes.privacy),
                    color: cWhite,
                    size: 10,
                    weight: FontWeight.w300,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
