import '../../../data/constant/color.dart';
import '../../../data/constant/file_string.dart';
import '../../../data/widget/sections/header.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
                const Header(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                          title: "Selamat datang,",
                          size: 20,
                          weight: FontWeight.w200,
                          color: cBlack,
                        ),
                        const TextWidget(
                          title: "Sehat lebih mudah",
                          size: 32,
                          weight: FontWeight.w400,
                          color: cBlue,
                        ),
                        const TextWidget(
                          title: "dalam genggaman tangan",
                          size: 32,
                          weight: FontWeight.w400,
                          color: cBlue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () => Get.toNamed(Routes.booking),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: cBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              )),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextWidget(
                              title: "Mendaftar Online",
                              size: 24,
                              weight: FontWeight.w400,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Image(
                      height: 450,
                      image: AssetImage(
                        side,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Container(
                    height: 200,
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
                        SizedBox(
                          height: 20,
                        ),
                        TextWidget(
                          title: "Informasi Poli",
                          size: 20,
                          weight: FontWeight.w500,
                          color: cWhite,
                        ),
                        TextWidget(
                          title:
                              "Data informasi poli rawat jalan Rumah Sakit Umum Santa Elisabeth hari ini",
                          size: 14,
                          weight: FontWeight.w200,
                          color: cWhite,
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

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.size,
    required this.weight,
    required this.color,
    this.align,
  });

  final String title;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
