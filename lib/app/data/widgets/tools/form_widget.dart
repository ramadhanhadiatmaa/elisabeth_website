import 'package:elisabeth_website/app/data/widgets/tools/text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        TextField(
          autocorrect: false,
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            labelText: title,
            labelStyle: const TextStyle(
              color: cGrey,
            ),
          ),
        ),
      ],
    );
  }
}

class FormWidgetT extends StatelessWidget {
  const FormWidgetT({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        TextField(
          autocorrect: false,
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            labelText: title,
            labelStyle: const TextStyle(
              color: cGrey,
            ),
          ),
        ),
      ],
    );
  }
}

class FormTextWidget extends StatelessWidget {
  const FormTextWidget({
    super.key,
    required this.title,
    required this.text,
    required this.controller,
  });

  final String title;
  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            TextWidgetMon(
              title: text,
              size: 12,
              weight: FontWeight.w400,
              color: cRed,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          autocorrect: false,
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            labelText: title,
            labelStyle: const TextStyle(
              color: cGrey,
            ),
          ),
        ),
      ],
    );
  }
}
