import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mycanal_app/app/modules/components/widgets/popup.dart';

import '../controllers/registerview_controller.dart';

class RegisterviewView extends GetView<RegisterviewController> {
  const RegisterviewView({super.key});

  Widget _formularWithEmailOrNum(context) {
    return Obx(() {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.indexOne(0);
                controller.changeIndex();
              },
              child: Column(children: [
                Text("Email",
                    style: TextStyle(
                        fontSize: 16,
                        color: controller.colors[controller.indexOne.value],
                        height: 2)),
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                      color:
                          controller.containerColors[controller.indexOne.value],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                )
              ]),
            ),
            GestureDetector(
              onTap: () {
                controller.indexOne(1);
                controller.changeIndex();
              },
              child: Column(children: [
                Text("      Téléphone",
                    style: TextStyle(
                        fontSize: 16,
                        color: controller.colors[controller.indexTwo.value],
                        height: 2)),
                Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                      color:
                          controller.containerColors[controller.indexTwo.value],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                )
              ]),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        TextField(
          cursorColor: Colors.red,
          style: TextStyle(color: Colors.black),
          controller: controller.indexOne.value == 0
              ? controller.num
              : controller.email,
          keyboardType: controller.textInput[controller.indexOne.value],
          decoration: InputDecoration(
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
              border: OutlineInputBorder(),
              hintText: controller.hintText[controller.indexOne.value],
              hintStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: 14)),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          cursorColor: Colors.red,
          style: TextStyle(color: Colors.black),
          controller: controller.password,
          obscureText: controller.isObscureText.value,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  controller.changeIconState();
                },
                child: Icon(controller.isObscureText.value == true
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              border: OutlineInputBorder(),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
              hintText: "mots de passe",
              hintStyle: TextStyle(fontWeight: FontWeight.w200, fontSize: 14)),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Checkbox(
              value: true,
              fillColor: WidgetStatePropertyAll(Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
              checkColor: Colors.red,
              onChanged: (value) {}),
          const Text("Rester connecter",
              style: TextStyle(color: Colors.grey, fontSize: 12))
        ]),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              if (controller.isDataSet()) {
                showDialogLoginPopUp(
                    context,
                    controller,
                    "connexion...",
                    CircularProgressIndicator(
                      color: Colors.red,
                    ));
              } else {
                showInfo(context, MessageType.error,
                    "email|num ou mots de passe incorrect");
              }
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.red,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0))),
            child:
                Text("Valider", style: const TextStyle(color: Colors.white))),
        const SizedBox(
          height: 15,
        ),
        TextButton(
            onPressed: () {},
            child: Text("Mots de passe oublié ?",
                style: TextStyle(color: Colors.red))),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text('CANAL+',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  backgroundColor: Colors.black,
                  fontSize: 30)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
            minHeight: Get.height,
            minWidth: Get.width,

            ),
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    const Text("Se connecter",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 15),
                    const Text(
                      "vous avez deja un compte CANAL+ ? Saisisser l'identifiant email ou telephone de votre compte CANAL+",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Colors.blueGrey),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    _formularWithEmailOrNum(context),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.red, width: 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Vous n'avez pas encore de compte ou etes abonné TV by CANAL ?",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, top: 5),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  minimumSize: Size(double.infinity, 45),
                                  backgroundColor: Colors.grey[200]),
                              child: Text("Continuer",
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.w500)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
