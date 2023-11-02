import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/privacy_controller.dart';

class PrivacyView extends GetView<PrivacyController> {
  const PrivacyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PrivacyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PrivacyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
