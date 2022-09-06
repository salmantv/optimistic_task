import 'package:get/get.dart';

import 'package:optmistic_task/app/modules/buttom_navigation/bindings/buttom_navigation_binding.dart';
import 'package:optmistic_task/app/modules/buttom_navigation/views/buttom_navigation_view.dart';
import 'package:optmistic_task/app/modules/home/bindings/home_binding.dart';
import 'package:optmistic_task/app/modules/home/views/home_view.dart';
import 'package:optmistic_task/app/modules/home_screen/bindings/home_screen_binding.dart';
import 'package:optmistic_task/app/modules/home_screen/views/home_screen_view.dart';
import 'package:optmistic_task/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:optmistic_task/app/modules/login_screen/views/login_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => OnBoardingPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.BUTTOM_NAVIGATION,
      page: () => BottomNavigationBarView(),
      binding: ButtomNavigationBinding(),
    ),
  ];
}
