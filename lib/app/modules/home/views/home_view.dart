import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mycanal_app/app/data/account_model.dart';
import 'package:mycanal_app/app/data/category_model.dart';
import 'package:mycanal_app/app/data/video_model.dart';
import 'package:mycanal_app/app/modules/components/widgets/actu_media.dart';
import 'package:mycanal_app/app/modules/components/widgets/buttom_navigation_bar.dart';
import 'package:mycanal_app/app/modules/components/widgets/category_widget.dart';
import '../controllers/home_controller.dart';
import '../../components/loading_screen.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  Widget __videoSection() {
    return Container(
        height: 170,
        margin: EdgeInsets.only(bottom: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return VideoWidget(video: videos[index]);
            }));
  }

  Widget __actuSection() {
    return Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return ActuMedia(video: videos[index]);
            }));
  }

  Widget __categorySection() {
    
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryWidget(
            category: Category.fromJson(categories[index]),
          );
        },
        separatorBuilder: (context, _) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final UserAccount user = Get.arguments;
    return Obx(() {
      if (controller.isLoading.value) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: SizedBox(
                width: 100,
                height: 70,
                child:
                    Image.asset("assets/images/splash.png", fit: BoxFit.cover)),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                    radius: 15, backgroundImage: AssetImage(user.avatar)),
              )
            ],
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  __actuSection(),
                  __categorySection(),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Continuer la lecture ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  __videoSection(),
                  __actuSection(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: NavBar(),
        );
      } else {
        return Scaffold(
          body: Center(child: Loadingscreen()),
        );
      }
    });
  }
}
