
import 'package:get/get.dart';
import 'package:mycanal_app/app/modules/components/widgets/custom_animation.dart';

import '../modules/accountuserscreen/bindings/accountuserscreen_binding.dart';
import '../modules/accountuserscreen/views/accountuserscreen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loginview/bindings/loginview_binding.dart';
import '../modules/loginview/views/loginview_view.dart';
import '../modules/presentation/bindings/presentation_binding.dart';
import '../modules/presentation/views/presentation_view.dart';
import '../modules/registerview/bindings/registerview_binding.dart';
import '../modules/registerview/views/registerview_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
      
    ),
    GetPage(
      name: _Paths.ACCOUNTUSERSCREEN,
      page: () => const AccountuserscreenView(),
      binding: AccountuserscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGINVIEW,
      page: () => const LoginviewView(),
      binding: LoginviewBinding(),
    ),
    GetPage(
      name: _Paths.REGISTERVIEW,
      page: () => const RegisterviewView(),
      binding: RegisterviewBinding(),
      customTransition: MyCustomTransition(),
      transitionDuration: Duration(seconds: 2),
    ),
    GetPage(
      name: _Paths.PRESENTATION,
      page: () => const PresentationView(),
      binding: PresentationBinding(),
      transition: Transition.fade,
      transitionDuration: Duration(seconds: 2),
    ),
  ];
}
