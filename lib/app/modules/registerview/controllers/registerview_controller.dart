import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycanal_app/app/routes/app_pages.dart';
import '../../../data/account_model.dart';

class RegisterviewController extends GetxController {
  //TODO: Implement RegisterviewController
  TextEditingController email = TextEditingController();
  TextEditingController num = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isObscureText = true.obs;

  void changeIconState(){
    if(isObscureText.value){
      isObscureText(false);
    }else{
      isObscureText(true);
    }
  }

  RxInt indexOne = 0.obs;
  RxInt indexTwo = 1.obs;
  RxList colors = [Colors.red, Colors.black].obs;
  RxList containerColors = [Colors.red, Colors.grey[200]].obs;
  RxList hintText = [
    "email de connexion CANAL+",
    "+242 05 25 05 05",
  ].obs;
  RxList textInput = [
    TextInputType.emailAddress,
    TextInputType.phone,
  ].obs;
  void changeIndex() {
    if (indexOne.value == 1) {
      indexTwo(0);
    } else {
      indexTwo(1);
    }
  }

  Future<void> isLoading() async {
    Future.delayed(Duration(seconds: 5));
  }

  bool isDataSet() {
    if (email.text.isEmpty && num.text.isEmpty || password.text.isEmpty) {
      return false;
    }
    return true;
  }

  Future<void> checkUser() async {
    if (email.text.isEmpty) {
      for (CanalAccount user in canalAccounts) {
        if (user.emailOrNum == num.text && user.password == password.text) {
          await isLoading();
          Get.offAllNamed(Routes.ACCOUNTUSERSCREEN);
          // Get.offAllNamed(Routes.HOME, arguments: user);
        }
      }
    } else {
      for (CanalAccount user in canalAccounts) {
        if (user.emailOrNum == email.text && user.password == password.text) {
          await isLoading();
          Get.offAllNamed(Routes.ACCOUNTUSERSCREEN, arguments: user);
        }
      }
    }
  }
}
