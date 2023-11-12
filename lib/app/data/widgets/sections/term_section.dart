import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../constants/file_string.dart';
import '../tools/text_widget.dart';

class TermSection extends StatelessWidget {
  const TermSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: ListView(
        children: [
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.6,
              height: MediaQuery.sizeOf(context).height * 1.2,
              color: cWhite,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetMon(
                      title: "Syarat Penggunaaan",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: pengguna,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Hak Cipta",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: cipta,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Penolakan",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: tolak,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Kebijakan Privasi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: tolak,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      tablet: ListView(
        children: [
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).height * 1.7,
              color: cWhite,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetMon(
                      title: "Syarat Penggunaaan",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: pengguna,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Hak Cipta",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: cipta,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Penolakan",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: tolak,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Kebijakan Privasi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: tolak,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      mobile: ListView(
        children: [
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: MediaQuery.sizeOf(context).height * 3.4,
              color: cWhite,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetMon(
                      title: "Syarat Penggunaaan",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: pengguna,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Hak Cipta",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: cipta,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Penolakan",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: tolak,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Kebijakan Privasi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: tolak,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
