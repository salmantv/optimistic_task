import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:optmistic_task/app/data/login_model.dart';
import 'package:optmistic_task/app/modules/buttom_navigation/bindings/buttom_navigation_binding.dart';
import 'package:optmistic_task/app/modules/home_screen/views/home_screen_view.dart';
import 'package:optmistic_task/app/modules/login_screen/controllers/login_screen_controller.dart';

import '../modules/buttom_navigation/views/buttom_navigation_view.dart';

class Apihelperclass {
  final logincontroller = Get.put(LoginScreenController());
  Future<List<LoginModel>> fetchingdata(
      String username, String password) async {
    if (username != "rahul@gmail.com" && password != "123") {
      Get.snackbar("Wrong User Passoword", "Enter a valid address",
          colorText: Colors.white, backgroundColor: Colors.black87);
      logincontroller.islogined.value = false;

      return <LoginModel>[];
    }
    try {
      final dio = Dio();
      final apiUrl =
          "http://185.188.127.100/WaselleApi/api/LoginDetails?UName=$username&Password=$password&UserType=Customer";
      var response = await dio.get(apiUrl);
      log(response.toString());

      if (response.statusCode == 200) {
        Iterable list = await response.data;
        logincontroller.islogined.value = false;
        Get.offAll(BottomNavigationBarView());
        return list.map((element) => LoginModel.fromJson(element)).toList();
      }
    } catch (e) {
      log(e.toString());
    }
    return <LoginModel>[];
  }
}
