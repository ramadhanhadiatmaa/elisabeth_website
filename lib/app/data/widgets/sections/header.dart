import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';
import '../../constants/color.dart';
import '../../constants/file_string.dart';
import '../tools/button_text.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.cBeranda,
    required this.cTentang,
    required this.cKontak,
    required this.cSiriel,
    required this.pBeranda,
    required this.pTentang,
    required this.pKontak,
    required this.pSiriel,
    required this.wBeranda,
    required this.wTentang,
    required this.wKontak,
    required this.wSiriel,
  });

  final Color cBeranda;
  final Color cTentang;
  final Color cKontak;
  final Color cSiriel;
  final VoidCallback pBeranda;
  final VoidCallback pTentang;
  final VoidCallback pKontak;
  final VoidCallback pSiriel;
  final FontWeight wBeranda;
  final FontWeight wTentang;
  final FontWeight wKontak;
  final FontWeight wSiriel;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Row(
          children: [
            Row(
              children: [
                const Image(
                  height: 40,
                  width: 40,
                  image: AssetImage(
                    logo,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RUMAH SAKIT UMUM",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "SANTA ELISABETH SAMBAS",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                ButtonText(
                  title: "BERANDA",
                  press: pBeranda,
                  color: cBeranda,
                  size: 20,
                  weight: wBeranda,
                ),
                ButtonText(
                  title: "TENTANG",
                  press: pTentang,
                  color: cTentang,
                  size: 20,
                  weight: wTentang,
                ),
                ButtonText(
                  title: "KONTAK",
                  press: pKontak,
                  color: cKontak,
                  size: 20,
                  weight: wKontak,
                ),
                ButtonText(
                  title: "TEMPAT TIDUR",
                  press: pSiriel,
                  color: cSiriel,
                  size: 20,
                  weight: wSiriel,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "DAFTAR",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: cWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      tablet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Row(
              children: [
                Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                ),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RUMAH SAKIT UMUM",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "SANTA ELISABETH SAMBAS",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      mobile: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0,
        ),
        child: Row(
          children: [
            Row(
              children: [
                Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                ),
                const Image(
                  height: 20,
                  width: 20,
                  image: AssetImage(
                    logo,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RUMAH SAKIT UMUM",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "SANTA ELISABETH SAMBAS",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
