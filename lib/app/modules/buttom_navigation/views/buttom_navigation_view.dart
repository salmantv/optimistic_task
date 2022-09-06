import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:optmistic_task/app/modules/buttom_navigation/controllers/buttom_navigation_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  final bottomcontroller = Get.put(BottomNavigationBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            onTap: (value) {
              bottomcontroller.pageindex.value = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: bottomcontroller.pageindex.value,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black54,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 25,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.home, size: 35),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.assignment,
                    size: 42,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                    size: 35,
                  ),
                  label: ""),
            ]);
      }),
      body: Obx(
        (() {
          return bottomcontroller.pages[bottomcontroller.pageindex.value];
        }),
      ),
    );
  }
}
