import 'package:get/get.dart';

import '../controllers/loadingscreen_controller.dart';

class LoadingscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoadingscreenController>(
      () => LoadingscreenController(),
    );
  }
}
