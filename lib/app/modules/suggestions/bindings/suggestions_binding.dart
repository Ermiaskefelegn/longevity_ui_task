import 'package:get/get.dart';

import '../controllers/suggestions_controller.dart';

class SuggestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuggestionsController>(
      () => SuggestionsController(),
    );
  }
}
