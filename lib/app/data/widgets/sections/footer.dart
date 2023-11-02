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
    return Column(
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
    );
  }
}
