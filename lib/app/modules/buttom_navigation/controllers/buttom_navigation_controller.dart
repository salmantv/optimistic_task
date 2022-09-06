import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:optmistic_task/app/modules/home_screen/views/home_screen_view.dart';

class BottomNavigationBarController extends GetxController {
  RxInt pageindex = 0.obs;

  var pages = <Widget>[
    HomeScreenView(),
    Text("ss"),
    Text("ss"),
  ];
}
