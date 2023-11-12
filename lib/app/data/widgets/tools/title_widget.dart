import 'package:elisabeth_website/app/data/widgets/tools/text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
    required this.size,
  });
  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: cBlue,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: TextWidgetMon(
              align: TextAlign.center,
              title: title,
              size: size,
              weight: FontWeight.w500,
              color: cWhite,
            ),
          ),
        ],
      ),
    );
  }
}
