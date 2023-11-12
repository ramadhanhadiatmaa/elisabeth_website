import 'package:elisabeth_website/app/data/constants/responsive.dart';
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
    return ResponsiveWidget(
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
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
                  title: "dalam genggaman",
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
          ),
          const SizedBox(
            width: 30,
          ),
          const Image(
            image: AssetImage(
              side,
            ),
            height: 450,
          ),
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  title: "Selamat datang,",
                  size: 14,
                  weight: FontWeight.w200,
                  color: cBlack,
                ),
                const TextWidget(
                  title: "Sehat lebih mudah",
                  size: 24,
                  weight: FontWeight.w400,
                  color: cBlue,
                ),
                const TextWidget(
                  title: "dalam genggaman",
                  size: 24,
                  weight: FontWeight.w400,
                  color: cBlue,
                ),
                const SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.booking),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: cBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextWidget(
                      title: "Mendaftar Online",
                      size: 16,
                      weight: FontWeight.w300,
                      color: cWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Image(
            height: 275,
            image: AssetImage(
              side,
            ),
          ),
        ],
      ),
      mobile: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextWidget(
                  title: "Selamat datang",
                  size: 14,
                  weight: FontWeight.w200,
                  color: cBlack,
                ),
                const TextWidget(
                  title: "Sehat lebih mudah",
                  size: 24,
                  weight: FontWeight.w400,
                  color: cBlue,
                ),
                const TextWidget(
                  title: "dalam genggaman",
                  size: 24,
                  weight: FontWeight.w400,
                  color: cBlue,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.booking),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: cBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextWidget(
                      title: "Mendaftar Online",
                      size: 16,
                      weight: FontWeight.w400,
                      color: cWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
