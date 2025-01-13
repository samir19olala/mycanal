import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mycanal_app/app/modules/splashscreen/controllers/splashscreen_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      onInit: () {
        Get.put(SplashscreenController());
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        primaryColorDark: Colors.red,
      ),
    ),
  );
}
