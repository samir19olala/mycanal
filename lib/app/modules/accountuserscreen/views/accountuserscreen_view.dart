import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/accountuserscreen_controller.dart';
import '../../components/loading_screen.dart';
import '../../components/widgets/account_widget.dart';


class AccountuserscreenView extends GetView<AccountuserscreenController> {
  const AccountuserscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/splash.png", height: 30, width: 60),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: Loadingscreen());
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              const Text(
                'Qui regarde ?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 350),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                      ),
                      padding: const EdgeInsets.all(2),
                      itemCount: controller.userAccounts.length + 1,
                      itemBuilder: (context, index) {
                        if (index < controller.userAccounts.length) {
                          return AccountWidget(
                            user: controller.userAccounts[index],
                          );
                        } else {
                          // Dernier élément pour ajouter un compte
                          return AddUserAccount();
                        }
                      },
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                     
                      constraints: const BoxConstraints(minWidth: 350),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),                      
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Ne plus afficher cet écran ?"),
                          SizedBox(width:30),
                          Transform.scale(
                            scale: 0.8,  // Réduire la taille du switch
                            child: Switch(
                              value: false,
                              onChanged: (value) {
                                // Ajoutez ici ce que vous voulez faire avec 'value'
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,  // Enlever la zone de tap
                              activeColor: Colors.blue,  // Couleur du switch quand activé
                              inactiveThumbColor: const Color.fromARGB(255, 92, 91, 91),  // Couleur du thumb quand inactif
                              inactiveTrackColor: Colors.black87, 
                               // Couleur du track quand inactif
                              activeTrackColor:Colors.blue.shade300,
                            ),
                          ),
                        ],
                      )),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                      child: const Text("Vous pourrez modifier cette préférence dans la rublique Réglages de l'application",
                      style: TextStyle(color:Colors.white38,fontWeight:FontWeight.w300,fontSize:12),
                      ),
                    ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
