import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../tools/text_widget.dart';
import '../tools/title_widget.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Column(
        children: [
          const TitleWidget(
            title: "Kontak Rumah Sakit",
            size: 16,
          ),
          Container(
            height: 900,
            width: MediaQuery.sizeOf(context).width,
            color: cWhite,
            child: const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextWidgetMon(
                  title: "Email : rsusantaelisabeth@gmail.com",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetMon(
                  title: "Nomor IGD : (+62) 821 4809 5769",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetMon(
                  title: "Instagram : @rsusantaelisabeth",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
              ],
            ),
          )
        ],
      ),
      tablet: Column(
        children: [
          const TitleWidget(
            title: "Kontak Rumah Sakit",
            size: 16,
          ),
          Container(
            height: 900,
            width: MediaQuery.sizeOf(context).width,
            color: cWhite,
            child: const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextWidgetMon(
                  title: "Email : rsusantaelisabeth@gmail.com",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetMon(
                  title: "Nomor IGD : (+62) 821 4809 5769",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetMon(
                  title: "Instagram : @rsusantaelisabeth",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
              ],
            ),
          )
        ],
      ),
      mobile: Column(
        children: [
          const TitleWidget(
            title: "Kontak Rumah Sakit",
            size: 16,
          ),
          Container(
            height: 900,
            width: MediaQuery.sizeOf(context).width,
            color: cWhite,
            child: const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextWidgetMon(
                  title: "Email : ",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 5,
                ),
                TextWidgetMon(
                  title: "rsusantaelisabeth@gmail.com",
                  size: 14,
                  weight: FontWeight.w500,
                  color: cBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetMon(
                  title: "Nomor IGD :",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 5,
                ),
                TextWidgetMon(
                  title: "(+62) 821 4809 5769",
                  size: 14,
                  weight: FontWeight.w500,
                  color: cBlack,
                ),
                SizedBox(
                  height: 10,
                ),
                TextWidgetMon(
                  title: "Instagram :",
                  size: 20,
                  weight: FontWeight.w600,
                  color: cBlack,
                ),
                SizedBox(
                  height: 5,
                ),
                TextWidgetMon(
                  title: "@rsusantaelisabeth",
                  size: 14,
                  weight: FontWeight.w500,
                  color: cBlack,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
