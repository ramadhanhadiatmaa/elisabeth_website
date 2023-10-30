import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../../constant/color.dart';
import '../../constant/file_string.dart';
import '../tools/button_text.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Row(
            children: [
              const Image(
                height: 50,
                width: 50,
                image: AssetImage(
                  logo,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "RSU SANTA ELISABETH SAMBAS",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              ButtonText(
                title: "BERANDA",
                press: () {},
                color: cBlue,
                size: 20,
                weight: FontWeight.w500,
              ),
              ButtonText(
                title: "TENTANG",
                press: () => Get.toNamed(
                  Routes.about,
                ),
                color: cBlack,
                size: 20,
                weight: FontWeight.w200,
              ),
              ButtonText(
                title: "KONTAK",
                press: () => Get.toNamed(
                  Routes.contact,
                ),
                color: cBlack,
                size: 20,
                weight: FontWeight.w200,
              ),
              ButtonText(
                title: "SIRIEL",
                press: () => Get.toNamed(
                  Routes.siriel,
                ),
                color: cBlack,
                size: 20,
                weight: FontWeight.w200,
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed(
                        Routes.booking,
                      ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: cBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "DAFTAR",
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                        color: cWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
