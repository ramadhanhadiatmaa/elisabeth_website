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
    return Container(
      height: 150,
      width: MediaQuery.sizeOf(context).width,
      color: cWhite,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidgetMon(
            title: "Kerja Sama Dengan:",
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
    );
  }
}
