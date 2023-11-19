import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:elisabeth_website/app/data/widgets/tools/button_widget.dart';
import 'package:elisabeth_website/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color.dart';
import '../tools/text_widget.dart';

class BookingSection extends StatelessWidget {
  const BookingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextWidgetMon(
                  title: "Pendaftaran Pasien RSU Santa Elisabeth",
                  size: 16,
                  weight: FontWeight.w500,
                  color: cBlack,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: cRed,
                        width: 0.1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.snackbar(
                          "Informasi",
                          "Pilih pasien baru apabila anda belum memiliki nomor rekam medis atau belum pernah berobat di Rumah Sakit Santa Elisabeth Sambas",
                          duration: const Duration(
                            seconds: 8,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.question_mark,
                        size: 14,
                        color: cRed,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Pasien Baru",
                    middleText:
                        "Apakah kamu yakin belum pernah berobat di sini?",
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    titleStyle: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                    middleTextStyle: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    actions: [
                      ButtonWidget(
                        title: "Batal",
                        color: cRed,
                        press: () => Get.back(),
                      ),
                      ButtonWidget(
                        title: "Yakin",
                        color: cBlue,
                        press: () => Get.toNamed(
                          Routes.baru,
                        ),
                      ),
                    ]);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cBlue,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidgetMon(
                  title: "PASIEN BARU",
                  size: 16,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.lama);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cRed,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidgetMon(
                  title: "PASIEN LAMA",
                  size: 16,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                Routes.home,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: cWhite,
                side: const BorderSide(
                  color: cBlack,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: TextWidgetMon(
                  title: "KEMBALI",
                  size: 12,
                  weight: FontWeight.w400,
                  color: cBlack,
                ),
              ),
            ),
          ],
        ),
      ),
      tablet: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextWidgetMon(
                  title: "Pendaftaran Pasien RSU Santa Elisabeth",
                  size: 16,
                  weight: FontWeight.w500,
                  color: cBlack,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: cRed,
                        width: 0.1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.snackbar(
                          "Informasi",
                          "Pilih pasien baru apabila anda belum memiliki nomor rekam medis atau belum pernah berobat di Rumah Sakit Santa Elisabeth Sambas",
                          duration: const Duration(
                            seconds: 8,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.question_mark,
                        size: 14,
                        color: cRed,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Pasien Baru",
                    middleText:
                        "Apakah kamu yakin belum pernah berobat di sini?",
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    titleStyle: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                    middleTextStyle: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    actions: [
                      ButtonWidget(
                        title: "Batal",
                        color: cRed,
                        press: () => Get.back(),
                      ),
                      ButtonWidget(
                        title: "Yakin",
                        color: cBlue,
                        press: () => Get.toNamed(
                          Routes.baru,
                        ),
                      ),
                    ]);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cBlue,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidgetMon(
                  title: "PASIEN BARU",
                  size: 16,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.lama);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cRed,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidgetMon(
                  title: "PASIEN LAMA",
                  size: 16,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                Routes.home,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: cWhite,
                side: const BorderSide(
                  color: cBlack,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: TextWidgetMon(
                  title: "KEMBALI",
                  size: 12,
                  weight: FontWeight.w400,
                  color: cBlack,
                ),
              ),
            ),
          ],
        ),
      ),
      mobile: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextWidgetMon(
                    align: TextAlign.center,
                    title: "Pendaftaran Pasien\nRSU Santa Elisabeth",
                    size: 16,
                    weight: FontWeight.w600,
                    color: cBlack,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: cRed,
                        width: 0.1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.snackbar(
                          "Informasi",
                          "Pilih pasien baru apabila anda belum memiliki nomor rekam medis atau belum pernah berobat di Rumah Sakit Santa Elisabeth Sambas",
                          duration: const Duration(
                            seconds: 8,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.question_mark,
                        size: 14,
                        color: cRed,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Pasien Baru",
                    middleText:
                        "Apakah kamu yakin belum pernah berobat di sini?",
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    titleStyle: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                    middleTextStyle: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    actions: [
                      ButtonWidget(
                        title: "Batal",
                        color: cRed,
                        press: () => Get.back(),
                      ),
                      ButtonWidget(
                        title: "Yakin",
                        color: cBlue,
                        press: () => Get.toNamed(
                          Routes.baru,
                        ),
                      ),
                    ]);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cBlue,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidgetMon(
                  title: "PASIEN BARU",
                  size: 16,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.lama);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: cRed,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextWidgetMon(
                  title: "PASIEN LAMA",
                  size: 16,
                  weight: FontWeight.w400,
                  color: cWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                Routes.home,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: cWhite,
                side: const BorderSide(
                  color: cBlack,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: TextWidgetMon(
                  title: "KEMBALI",
                  size: 12,
                  weight: FontWeight.w400,
                  color: cBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
