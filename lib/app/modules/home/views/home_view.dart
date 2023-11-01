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
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
