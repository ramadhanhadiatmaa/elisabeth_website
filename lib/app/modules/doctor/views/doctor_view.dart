import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/doctor_controller.dart';

class DoctorView extends GetView<DoctorController> {
  const DoctorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DoctorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DoctorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
