import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../../constants/color.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(children: [
        TextSpan(
          text:
              "*Kami selalu menjaga kerahasiaan, keamanan dan privasi anda sesuai dengan peraturan perundang-undangan yang berlaku di negara ini.\n\n*Dengan anda mendaftar berarti anda menyetujui, tunduk dan patuh terhadap ",
          style: GoogleFonts.montserrat(
            color: cBlack,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
        ),
        TextSpan(
            text: "kebijakan privasi",
            style: GoogleFonts.montserrat(
              color: cBlue,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(Routes.privacy);
              }),
        TextSpan(
          text: " dan ",
          style: GoogleFonts.montserrat(
            color: cBlack,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
        ),
        TextSpan(
            text: "aturan pengguna",
            style: GoogleFonts.montserrat(
              color: cBlue,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(Routes.terms);
              }),
        TextSpan(
          text: " website Rumah Sakit Umum Santa Elisabeth Sambas.",
          style: GoogleFonts.montserrat(
            color: cBlack,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
        ),
      ]),
    );
  }
}
