import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/sections/footer.dart';
import '../../../data/widgets/sections/header.dart';
import '../../../data/widgets/tools/button_text.dart';
import '../../../data/widgets/tools/text_widget.dart';
import '../../../data/widgets/tools/title_widget.dart';
import '../../../routes/app_pages.dart';
import '../controllers/siriel_controller.dart';

class SirielView extends GetView<SirielController> {
  const SirielView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.all(
                    20,
                  ),
                  child: Center(
                    child: TextWidgetMon(
                      title: "RSU Santa Elisabeth",
                      size: 16,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ButtonText(
                    title: "BERANDA",
                    press: () {
                      Get.offAndToNamed(Routes.home);
                    },
                    color: cBlack,
                    size: 20,
                    weight: FontWeight.w300,
                  ),
                  ButtonText(
                    title: "TENTANG",
                    press: () {
                      Get.offAndToNamed(Routes.about);
                    },
                    color: cBlack,
                    size: 20,
                    weight: FontWeight.w300,
                  ),
                  ButtonText(
                    title: "KONTAK",
                    press: () {
                      Get.offAndToNamed(Routes.contact);
                    },
                    color: cBlack,
                    size: 20,
                    weight: FontWeight.w300,
                  ),
                  ButtonText(
                    title: "SIRIEL",
                    press: () {
                      Navigator.pop(context);
                    },
                    color: cBlue,
                    size: 20,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                    onPressed: () => Get.toNamed(Routes.booking),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20.0,
                      ),
                      child: TextWidgetMon(
                        title: "Daftar",
                        size: 12,
                        weight: FontWeight.w400,
                        color: cWhite,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Header(
                      cBeranda: cBlack,
                      cTentang: cBlack,
                      cKontak: cBlack,
                      cSiriel: cBlue,
                      pBeranda: () => Get.toNamed(Routes.home),
                      pTentang: () => Get.toNamed(Routes.about),
                      pKontak: () => Get.toNamed(Routes.contact),
                      pSiriel: () {},
                      wBeranda: FontWeight.w200,
                      wTentang: FontWeight.w200,
                      wKontak: FontWeight.w200,
                      wSiriel: FontWeight.w500,
                    ),
                    Column(
                      children: [
                        const TitleWidget(
                          title:
                              "Sistem Informasi Rawat Inap Rumah Sakit Elisabeth",
                          size: 16,
                        ),
                        Container(
                          height: 900,
                          color: cWhite,
                        )
                      ],
                    ),
                    const Footers()
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
