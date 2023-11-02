import 'dart:ui';

import 'package:elisabeth_website/app/data/widgets/tools/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/constants/file_string.dart';
import '../../../data/widgets/sections/banner.dart';
import '../../../data/widgets/sections/header.dart';
import '../../../data/widgets/sections/poli_section.dart';
import '../../../data/widgets/sections/service_section.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final homeC = Get.put(HomeController());
  final ScrollController scroll = ScrollController();
  final ScrollController scrollDokter = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Image(
                image: AssetImage(
                  back,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Header(
                  cBeranda: cBlue,
                  cTentang: cBlack,
                  cKontak: cBlack,
                  cSiriel: cBlack,
                  pBeranda: () {},
                  pTentang: () => Get.toNamed(Routes.about),
                  pKontak: () => Get.toNamed(Routes.contact),
                  pSiriel: () => Get.toNamed(Routes.siriel),
                  wBeranda: FontWeight.w500,
                  wTentang: FontWeight.w200,
                  wKontak: FontWeight.w200,
                  wSiriel: FontWeight.w200,
                ),
                const Banners(),
                SectionPoli(homeC: homeC),
                SectionService(scroll: scroll),
                SectionDokter(scrollDokter: scrollDokter, homeC: homeC)
              ],
            ),
          ],
        ),
      ],
    ));
  }
}

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
    return Container(
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
                    behavior:
                        ScrollConfiguration.of(context).copyWith(dragDevices: {
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
                                      title: homeC.dokterList[index].spesialis,
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
    );
  }
}
