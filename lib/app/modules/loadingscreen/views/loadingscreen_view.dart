import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loadingscreen_controller.dart';

class LoadingscreenView extends GetView<LoadingscreenController> {
  const LoadingscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
       child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          CircularProgressIndicator(
            color:const Color.fromARGB(255, 248, 38, 23)
            ),
        ]
       )
      ),
    );
  }
}
