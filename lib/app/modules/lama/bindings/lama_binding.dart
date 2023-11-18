import 'package:get/get.dart';

import '../controllers/lama_controller.dart';

class LamaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LamaController>(
      () => LamaController(),
    );
  }
}
