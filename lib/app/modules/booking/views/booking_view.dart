import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/widgets/sections/booking_section.dart';
import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  BookingView({Key? key}) : super(key: key);

  final bookC = Get.put(BookingController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookingSection(),
    );
  }
}
