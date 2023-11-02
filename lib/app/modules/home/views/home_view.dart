import 'dart:ui';

import 'package:elisabeth_website/app/data/widgets/tools/service_widget.dart';
import 'package:elisabeth_website/app/data/widgets/tools/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/constants/file_string.dart';
import '../../../data/widgets/sections/banner.dart';
import '../../../data/widgets/sections/header.dart';
import '../../../data/widgets/sections/poli_section.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final homeC = Get.put(HomeController());
  final ScrollController scroll = ScrollController();

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
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  height: 300,
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            title: "Layanan Kami",
                            size: 30,
                            weight: FontWeight.w800,
                            color: cBlack,
                          ),
                          TextWidget(
                            title:
                                'Kami memberikan pelayanan terbaik sesuai dengan\nmoto rumah sakit "Melayani Dengan Kasih".',
                            size: 16,
                            weight: FontWeight.w300,
                            color: cBlack,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      SizedBox(
                        width: 650,
                        height: 150,
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context)
                              .copyWith(dragDevices: {
                            PointerDeviceKind.touch,
                            PointerDeviceKind.mouse,
                          }),
                          child: Scrollbar(
                            thumbVisibility: true,
                            controller: scroll,
                            child: ListView(
                              controller: scroll,
                              scrollDirection: Axis.horizontal,
                              physics: const AlwaysScrollableScrollPhysics(),
                              children: const [
                                ServiceWidget(image: img1, title: text1),
                                ServiceWidget(image: img2, title: text2),
                                ServiceWidget(image: img3, title: text3),
                                ServiceWidget(image: img4, title: text4),
                                ServiceWidget(image: img5, title: text5),
                                ServiceWidget(image: img6, title: text6),
                                ServiceWidget(image: img7, title: text7),
                                ServiceWidget(image: img8, title: text8),
                                ServiceWidget(image: img9, title: text9),
                                ServiceWidget(image: img10, title: text10),
                                ServiceWidget(image: img11, title: text11),
                                ServiceWidget(image: img12, title: text12),
                                ServiceWidget(image: img13, title: text13),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
