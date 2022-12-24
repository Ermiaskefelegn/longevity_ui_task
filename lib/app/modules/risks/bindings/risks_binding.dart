import 'package:get/get.dart';

import '../controllers/risks_controller.dart';

class RisksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RisksController>(
      () => RisksController(),
    );
  }
}
