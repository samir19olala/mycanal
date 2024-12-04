import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loadingscreen_controller.dart';

class LoadingscreenView extends GetView<LoadingscreenController> {
  const LoadingscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoadingscreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoadingscreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
