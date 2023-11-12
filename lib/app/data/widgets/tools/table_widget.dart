import 'package:flutter/material.dart';

import '../../constants/color.dart';
import 'text_widget.dart';

class TableObx extends StatelessWidget {
  const TableObx({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextWidgetMon(
          align: TextAlign.center,
          title: title,
          size: 14,
          weight: FontWeight.w400,
          color: cBlue,
        ),
      ),
    );
  }
}

class TableCon extends StatelessWidget {
  const TableCon({super.key, required this.title, required this.size});

  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: size,
        decoration: const BoxDecoration(color: cBlue),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2.0,
            ),
            child: TextWidgetMon(
              align: TextAlign.center,
              title: title,
              size: 14,
              weight: FontWeight.w400,
              color: cWhite,
            ),
          ),
        ),
      ),
    );
  }
}
