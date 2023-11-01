import 'package:intl/intl.dart';

import '../../../data/constants/color.dart';
import '../../../data/constants/file_string.dart';
import '../../../data/widgets/sections/banner.dart';
import '../../../data/widgets/sections/header.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../data/widgets/tools/text_widget.dart';
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Container(
                    height: 340,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: cBlue.withOpacity(
                        0.6,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const TextWidget(
                          title: "Informasi Poli",
                          size: 20,
                          weight: FontWeight.w500,
                          color: cWhite,
                        ),
                        TextWidget(
                          title:
                              "Informasi poli Rumah Sakit Umum Santa Elisabeth pada, ${DateFormat.yMd().format(DateTime.now())}, jam ${DateFormat.Hm().format(DateTime.now())}",
                          size: 14,
                          weight: FontWeight.w200,
                          color: cWhite,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FutureBuilder(
                                future: homeC.fetchPoliData(),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData) {
                                    return const CircularProgressIndicator();
                                  }
                                  return SizedBox(
                                    height: 216,
                                    width: homeC.poliList.length * 216,
                                    child: Center(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: homeC.poliList.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: cWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: cWhite
                                                            .withOpacity(0.2),
                                                        spreadRadius: 6.0,
                                                        blurRadius: 6.0,
                                                        offset:
                                                            const Offset(3, 3),
                                                      )
                                                    ]),
                                                width: 200,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      bottom: 0,
                                                      child: Container(
                                                        width: 200,
                                                        height: 30,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: (homeC
                                                                      .poliList[
                                                                          index]
                                                                      .status ==
                                                                  "Buka")
                                                              ? cBlue
                                                              : cRed,
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                              20,
                                                            ),
                                                            bottomRight:
                                                                Radius.circular(
                                                              20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 5,
                                                      left: 0,
                                                      right: 0,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: TextWidget(
                                                          title: homeC
                                                              .poliList[index]
                                                              .status
                                                              .toString(),
                                                          size: 14,
                                                          weight:
                                                              FontWeight.bold,
                                                          color: cWhite,
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          children: [
                                                            const SizedBox(
                                                              height: 20,
                                                            ),
                                                            ClipOval(
                                                              child: Image(
                                                                image:
                                                                    NetworkImage(
                                                                  homeC
                                                                      .poliList[
                                                                          index]
                                                                      .foto
                                                                      .toString(),
                                                                ),
                                                                height: 100,
                                                                width: 100,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            TextWidget(
                                                              title: homeC
                                                                  .poliList[
                                                                      index]
                                                                  .dokter
                                                                  .toString(),
                                                              size: 10,
                                                              weight: FontWeight
                                                                  .w300,
                                                              color: cBlack,
                                                            ),
                                                            TextWidget(
                                                              title: homeC
                                                                  .poliList[
                                                                      index]
                                                                  .nama
                                                                  .toString(),
                                                              size: 14,
                                                              weight: FontWeight
                                                                  .w500,
                                                              color: cBlack,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ],
                    ),
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
