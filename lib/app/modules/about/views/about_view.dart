import '../../../data/constants/color.dart';
import '../../../data/widgets/sections/header.dart';
import '../../../data/widgets/sections/information_section.dart';
import '../../../data/widgets/tools/button_text.dart';
import '../../../data/widgets/tools/text_widget.dart';
import '../../home/controllers/home_controller.dart';
import '../../../routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widgets/sections/footer.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  AboutView({Key? key}) : super(key: key);
  final HomeController homeC = HomeController();
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
                      Navigator.pop(context);
                    },
                    color: cBlue,
                    size: 20,
                    weight: FontWeight.w500,
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
                    title: "TEMPAT TIDUR",
                    press: () {
                      Get.offAndToNamed(Routes.siriel);
                    },
                    color: cBlack,
                    size: 20,
                    weight: FontWeight.w300,
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
                    const InformationSection(),
                    const Footers()
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
