import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../constants/file_string.dart';
import '../tools/text_widget.dart';

class PrivacySection extends StatelessWidget {
  const PrivacySection({
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
                      title: "Pengumpulan Informasi Pribadi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: informasi,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Perubahan Pernyataan Privasi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: pernyataan,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      tablet: ListView(
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
                      title: "Pengumpulan Informasi Pribadi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: informasi,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Perubahan Pernyataan Privasi",
                      size: 20,
                      weight: FontWeight.w500,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: pernyataan,
                      size: 14,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      mobile: ListView(
        children: [
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.95,
              height: MediaQuery.sizeOf(context).height * 1.2,
              color: cWhite,
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetMon(
                      title: "Pengumpulan Informasi Pribadi",
                      size: 16,
                      weight: FontWeight.w800,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: informasi,
                      size: 10,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidgetMon(
                      title: "Perubahan Pernyataan Privasi",
                      size: 16,
                      weight: FontWeight.w800,
                      color: cBlack,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextWidgetMon(
                      align: TextAlign.justify,
                      title: pernyataan,
                      size: 10,
                      weight: FontWeight.w400,
                      color: cBlack,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
