import 'dart:ui';

import 'package:elisabeth_website/app/data/widgets/tools/service_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../constants/file_string.dart';
import '../tools/text_widget.dart';

class SectionService extends StatelessWidget {
  const SectionService({
    super.key,
    required this.scroll,
  });

  final ScrollController scroll;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      height: 300,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: "Layanan Kami",
                size: 30,
                weight: FontWeight.w800,
                color: cBlack,
              ),
              TextWidget(
                title:
                    'Kami memberikan pelayanan terbaik sesuai dengan\nmoto rumah sakit "Melayani Dengan Kasih".',
                size: 16,
                weight: FontWeight.w300,
                color: cBlack,
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          SizedBox(
            width: 650,
            height: 150,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              }),
              child: Scrollbar(
                thumbVisibility: true,
                controller: scroll,
                child: ListView(
                  controller: scroll,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    ServiceWidget(image: img1, title: text1),
                    ServiceWidget(image: img2, title: text2),
                    ServiceWidget(image: img3, title: text3),
                    ServiceWidget(image: img4, title: text4),
                    ServiceWidget(image: img5, title: text5),
                    ServiceWidget(image: img6, title: text6),
                    ServiceWidget(image: img7, title: text7),
                    ServiceWidget(image: img8, title: text8),
                    ServiceWidget(image: img9, title: text9),
                    ServiceWidget(image: img10, title: text10),
                    ServiceWidget(image: img11, title: text11),
                    ServiceWidget(image: img12, title: text12),
                    ServiceWidget(image: img13, title: text13),
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
