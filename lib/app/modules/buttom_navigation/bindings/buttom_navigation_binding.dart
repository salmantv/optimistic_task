import 'package:get/get.dart';

import '../controllers/buttom_navigation_controller.dart';

class ButtomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(
      () => BottomNavigationBarController(),
    );
  }
}
