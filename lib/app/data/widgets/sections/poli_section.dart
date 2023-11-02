import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../modules/home/controllers/home_controller.dart';
import '../../constants/color.dart';
import '../tools/text_widget.dart';

class SectionPoli extends StatelessWidget {
  const SectionPoli({
    super.key,
    required this.homeC,
  });

  final HomeController homeC;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Container(
        height: 340,
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
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 216,
                    width: homeC.poliList.length * 216,
                    child: Obx(() {
                      if (homeC.isPoliLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: homeC.poliList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: cWhite,
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: cWhite.withOpacity(0.2),
                                        spreadRadius: 6.0,
                                        blurRadius: 6.0,
                                        offset: const Offset(3, 3),
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
                                        decoration: BoxDecoration(
                                          color:
                                              (homeC.poliList[index].status ==
                                                      "Buka")
                                                  ? cBlue
                                                  : cRed,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                              20,
                                            ),
                                            bottomRight: Radius.circular(
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
                                        alignment: Alignment.center,
                                        child: TextWidget(
                                          title: homeC.poliList[index].status,
                                          size: 14,
                                          weight: FontWeight.bold,
                                          color: cWhite,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            ClipOval(
                                              child: Image(
                                                image: NetworkImage(
                                                  homeC.poliList[index].foto,
                                                ),
                                                height: 100,
                                                width: 100,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            TextWidget(
                                              title:
                                                  homeC.poliList[index].dokter,
                                              size: 10,
                                              weight: FontWeight.w300,
                                              color: cBlack,
                                            ),
                                            TextWidget(
                                              title: homeC.poliList[index].nama,
                                              size: 14,
                                              weight: FontWeight.w500,
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
                          });
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
