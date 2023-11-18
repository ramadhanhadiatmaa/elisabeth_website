import 'package:get/get.dart';

import '../controllers/baru_controller.dart';

class BaruBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaruController>(
      () => BaruController(),
    );
  }
}
