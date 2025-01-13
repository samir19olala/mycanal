import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mycanal_app/app/routes/app_pages.dart';

import '../controllers/presentation_controller.dart';

class PresentationView extends GetView<PresentationController> {
  const PresentationView({super.key});
  Widget _btnConnexion() {
    return ElevatedButton(
        onPressed: () {
          Get.offAllNamed(Routes.REGISTERVIEW);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        ),
        child: const Text(
          "SE CONNECTER",
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
        ));
  }

  Widget _accueilSection() {
    return Container(
      constraints: BoxConstraints(minWidth: Get.width, minHeight: 500),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
              child: Image.asset("assets/images/presentation.jpg",
                  fit: BoxFit.fill)),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NE CONFIEZ PAS VOTRE IMAGINATION A N'IMPORTE QUI",
                    maxLines: 3,
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    "Regardez le meilleur des séries, des films et du sport en streaming et en illimité",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    )),
                const SizedBox(
                  height: 15,
                ),
                _btnConnexion(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
      child: Column(
        children: [
          //accueil section
          _accueilSection(),
        ],
      ),
    ));
  }
}
