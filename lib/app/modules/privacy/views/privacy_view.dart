import 'package:elisabeth_website/app/data/constants/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widgets/sections/privacy_section.dart';
import '../controllers/privacy_controller.dart';

class PrivacyView extends GetView<PrivacyController> {
  const PrivacyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Privacy Policy'),
          centerTitle: true,
          backgroundColor: cBlue,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_outlined,
            ),
          ),
        ),
        body: const PrivacySection());
  }
}
