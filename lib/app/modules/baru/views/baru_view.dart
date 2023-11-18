import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color.dart';
import '../../../data/widgets/sections/baru_section.dart';
import '../../../routes/app_pages.dart';
import '../controllers/baru_controller.dart';

class BaruView extends GetView<BaruController> {
  BaruView({Key? key}) : super(key: key);

  final baruC = Get.put(BaruController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendaftaran Pasien Baru'),
        centerTitle: true,
        backgroundColor: cBlue,
        leading: IconButton(
          onPressed: () => Get.offAndToNamed(Routes.booking),
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
      ),
      body: BaruSection(baruC: baruC),
    );
  }
}
