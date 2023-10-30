import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/siriel_controller.dart';

class SirielView extends GetView<SirielController> {
  const SirielView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SirielView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SirielView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
