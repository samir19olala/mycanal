import 'package:get/get.dart';
import 'package:mycanal_app/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController

  @override
  void onInit() async{
    super.onInit();
    splashscreenDelayed();
  }

  Future<void> splashscreenDelayed() async {
    await Future.delayed(Duration(seconds: 10));
    Get.offAllNamed(Routes.PRESENTATION);
  }
}
