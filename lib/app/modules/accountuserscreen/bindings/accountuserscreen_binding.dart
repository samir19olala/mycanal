import 'package:get/get.dart';

import '../controllers/accountuserscreen_controller.dart';

class AccountuserscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountuserscreenController>(
      () => AccountuserscreenController(),
    );
  }
}
