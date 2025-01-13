import 'package:get/get.dart';
import 'package:mycanal_app/app/data/category_model.dart';
import 'package:mycanal_app/app/utilities/json_convert.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final RxBool isLoading = false.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    final String categoriesJson = await convertJson(categories);
    saveData(categoryPath, categoriesJson);
    await Future.delayed(Duration(seconds: 10));
    isLoading(true);
  }
}
