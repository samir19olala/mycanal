import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loginview_controller.dart';

class LoginviewView extends GetView<LoginviewController> {
  const LoginviewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginviewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
