import 'package:elisabeth_website/app/data/constants/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/widgets/sections/term_section.dart';
import '../controllers/terms_controller.dart';

class TermsView extends GetView<TermsController> {
  const TermsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Terms And Condition'),
          centerTitle: true,
          backgroundColor: cBlue,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_outlined,
            ),
          ),
        ),
        body: const TermSection());
  }
}
