import 'package:elisabeth_website/app/data/constants/responsive.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../constants/file_string.dart';
import '../tools/text_widget.dart';

class SectionPartner extends StatelessWidget {
  const SectionPartner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: Container(
        height: 150,
        width: MediaQuery.sizeOf(context).width,
        color: cWhite,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidgetMon(
              title: "Partner Kami:",
              size: 16,
              weight: FontWeight.w700,
              color: cBlack,
            ),
            SizedBox(
              width: 60,
            ),
            Image(
              height: 60,
              image: AssetImage(
                bpjs,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Image(
              height: 60,
              image: AssetImage(
                mandiri,
              ),
            ),
          ],
        ),
      ),
      tablet: Container(
        height: 150,
        width: MediaQuery.sizeOf(context).width,
        color: cWhite,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidgetMon(
              title: "Partner Kami:",
              size: 16,
              weight: FontWeight.w700,
              color: cBlack,
            ),
            SizedBox(
              width: 60,
            ),
            Image(
              height: 60,
              image: AssetImage(
                bpjs,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Image(
              height: 60,
              image: AssetImage(
                mandiri,
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        color: cWhite,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidgetMon(
              title: "Partner Kami:",
              size: 14,
              weight: FontWeight.w700,
              color: cBlack,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 40,
                  image: AssetImage(
                    bpjs,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Image(
                  height: 40,
                  image: AssetImage(
                    mandiri,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
