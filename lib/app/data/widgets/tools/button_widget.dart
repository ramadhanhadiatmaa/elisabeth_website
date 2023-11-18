import 'package:flutter/material.dart';

import '../../constants/color.dart';
import 'text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.press});

  final String title;
  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
        backgroundColor: color,
      ),
      onPressed: press,
      child: TextWidget(
        title: title,
        color: cWhite,
        weight: FontWeight.w500,
        size: 14,
      ),
    );
  }
}
