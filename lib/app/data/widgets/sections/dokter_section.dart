import 'dart:ui';

import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../modules/home/controllers/home_controller.dart';
import '../../constants/color.dart';
import '../tools/text_widget.dart';

class SectionDokter extends StatelessWidget {
  const SectionDokter({
    super.key,
    required this.scrollDokter,
    required this.homeC,
  });

  final ScrollController scrollDokter;
  final HomeController homeC;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 340,
        color: cBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              title: "Dokter Kami",
              size: 20,
              weight: FontWeight.w500,
              color: cWhite,
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 220,
                    width: 5 * 220,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      }),
                      child: Scrollbar(
                        controller: scrollDokter,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: scrollDokter,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: homeC.dokterList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                      color: cWhite),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Image(
                                        height: 120,
                                        width: 120,
                                        image: NetworkImage(
                                          homeC.dokterList[index].foto,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                        ),
                                        child: TextWidget(
                                          align: TextAlign.center,
                                          title: homeC.dokterList[index].nama,
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: cBlack,
                                        ),
                                      ),
                                      TextWidget(
                                        title:
                                            homeC.dokterList[index].spesialis,
                                        size: 16,
                                        weight: FontWeight.w700,
                                        color: cBlack,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      tablet: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 340,
        color: cBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              title: "Dokter Kami",
              size: 20,
              weight: FontWeight.w500,
              color: cWhite,
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 220,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      }),
                      child: Scrollbar(
                        controller: scrollDokter,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: scrollDokter,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: homeC.dokterList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                      color: cWhite),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Image(
                                        height: 120,
                                        width: 120,
                                        image: NetworkImage(
                                          homeC.dokterList[index].foto,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                        ),
                                        child: TextWidget(
                                          align: TextAlign.center,
                                          title: homeC.dokterList[index].nama,
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: cBlack,
                                        ),
                                      ),
                                      TextWidget(
                                        title:
                                            homeC.dokterList[index].spesialis,
                                        size: 16,
                                        weight: FontWeight.w700,
                                        color: cBlack,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 340,
        color: cBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              title: "Dokter Kami",
              size: 20,
              weight: FontWeight.w500,
              color: cWhite,
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 220,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      }),
                      child: Scrollbar(
                        controller: scrollDokter,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: scrollDokter,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: homeC.dokterList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                      color: cWhite),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Image(
                                        height: 120,
                                        width: 120,
                                        image: NetworkImage(
                                          homeC.dokterList[index].foto,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                        ),
                                        child: TextWidget(
                                          align: TextAlign.center,
                                          title: homeC.dokterList[index].nama,
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: cBlack,
                                        ),
                                      ),
                                      TextWidget(
                                        title:
                                            homeC.dokterList[index].spesialis,
                                        size: 16,
                                        weight: FontWeight.w700,
                                        color: cBlack,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
