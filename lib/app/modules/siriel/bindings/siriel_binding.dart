import 'package:get/get.dart';

import '../controllers/siriel_controller.dart';

class SirielBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SirielController>(
      () => SirielController(),
    );
  }
}
