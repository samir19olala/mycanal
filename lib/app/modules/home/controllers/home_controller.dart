import 'package:get/get.dart';
import 'package:mycanal_app/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Get.toNamed(Routes.LOADINGSCREEN);
  }
}
