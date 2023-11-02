import 'package:elisabeth_website/app/data/constants/color.dart';
import 'package:elisabeth_website/app/data/widgets/sections/header.dart';
import 'package:elisabeth_website/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Header(
              cBeranda: cBlack,
              cTentang: cBlue,
              cKontak: cBlack,
              cSiriel: cBlack,
              pBeranda: () => Get.toNamed(Routes.home),
              pTentang: () {},
              pKontak: () => Get.toNamed(Routes.contact),
              pSiriel: () => Get.toNamed(Routes.siriel),
              wBeranda: FontWeight.w200,
              wTentang: FontWeight.w500,
              wKontak: FontWeight.w200,
              wSiriel: FontWeight.w200,
            ),
          ],
        )
      ],
    ));
  }
}
