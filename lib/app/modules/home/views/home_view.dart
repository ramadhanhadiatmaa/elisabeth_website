import 'package:elisabeth_website/app/data/widgets/tools/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/constants/file_string.dart';
import '../../../data/widgets/sections/banner.dart';
import '../../../data/widgets/sections/dokter_section.dart';
import '../../../data/widgets/sections/footer.dart';
import '../../../data/widgets/sections/header.dart';
import '../../../data/widgets/sections/partner_section.dart';
import '../../../data/widgets/sections/poli_section.dart';
import '../../../data/widgets/sections/service_section.dart';
import '../../../data/widgets/tools/button_text.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final homeC = Get.put(HomeController());
  final ScrollController scroll = ScrollController();
  final ScrollController scrollDokter = ScrollController();
  final ScrollController scrollPoli = ScrollController();

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
                      Navigator.pop(context);
                    },
                    color: cBlue,
                    size: 20,
                    weight: FontWeight.w500,
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
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
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
                    SectionPoli(scrollPoli: scrollPoli, homeC: homeC),
                    SectionService(scroll: scroll),
                    SectionDokter(scrollDokter: scrollDokter, homeC: homeC),
                    const SectionPartner(),
                    const Footers()
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
