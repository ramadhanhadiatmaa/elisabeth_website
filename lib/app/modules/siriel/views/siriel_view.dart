import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/siriel_controller.dart';

class SirielView extends GetView<SirielController> {
  const SirielView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Sistem Informasi Rawat Inap Santa Elisabeth',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
