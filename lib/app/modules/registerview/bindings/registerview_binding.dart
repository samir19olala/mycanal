import 'package:get/get.dart';

import '../controllers/registerview_controller.dart';

class RegisterviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterviewController>(
      () => RegisterviewController(),
    );
  }
}
