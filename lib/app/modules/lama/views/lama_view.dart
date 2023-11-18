import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/sections/lama_section.dart';
import '../../../routes/app_pages.dart';
import '../controllers/lama_controller.dart';

class LamaView extends GetView<LamaController> {
  LamaView({Key? key}) : super(key: key);

  final lamaC = Get.put(LamaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendaftaran Pasien Lama'),
        backgroundColor: cBlue,
        leading: IconButton(
          onPressed: () => Get.offAndToNamed(Routes.booking),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),
        centerTitle: true,
      ),
      body: LamaSection(lamaC: lamaC),
    );
  }
}
