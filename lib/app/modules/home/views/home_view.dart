import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../components/loading_screen.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: Column(
              children: [
                Text(
                  'HomeView is working',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Loadingscreen(),
          );
        }
      }),
    );
  }
}
