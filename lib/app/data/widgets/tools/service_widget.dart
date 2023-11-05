import 'text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          color: cBlue,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 60,
              width: 60,
              image: AssetImage(
                image,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              title: title,
              size: 14,
              weight: FontWeight.w300,
              color: cWhite,
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceWidgetMobile extends StatelessWidget {
  const ServiceWidgetMobile({
    super.key,
    required this.image,
    required this.title,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: Container(
        width: 180,
        height: 100,
        decoration: BoxDecoration(
          color: cBlue,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 50,
              width: 50,
              image: AssetImage(
                image,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              title: title,
              size: 14,
              weight: FontWeight.w300,
              color: cWhite,
            ),
          ],
        ),
      ),
    );
  }
}
