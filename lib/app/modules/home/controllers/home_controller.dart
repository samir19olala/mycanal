import 'package:get/get.dart';


class HomeController extends GetxController {
  //TODO: Implement HomeController

  final RxBool isLoading = false.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    await Future.delayed(Duration(seconds: 10));
    isLoading(true);
  }
}
