import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../constants/color.dart';
import '../../constants/file_string.dart';
import '../tools/text_widget.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
              title: "Selamat datang,",
              size: 20,
              weight: FontWeight.w200,
              color: cBlack,
            ),
            const TextWidget(
              title: "Sehat lebih mudah",
              size: 32,
              weight: FontWeight.w400,
              color: cBlue,
            ),
            const TextWidget(
              title: "dalam genggaman tangan",
              size: 32,
              weight: FontWeight.w400,
              color: cBlue,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.booking),
              style: ElevatedButton.styleFrom(
                  backgroundColor: cBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  )),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidget(
                  title: "Mendaftar Online",
                  size: 24,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 40,
        ),
        const Image(
          height: 450,
          image: AssetImage(
            side,
          ),
        ),
      ],
    );
  }
}
