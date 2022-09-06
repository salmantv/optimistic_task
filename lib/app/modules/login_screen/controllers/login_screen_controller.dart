import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:optmistic_task/app/data/api_helper.dart';
import 'package:optmistic_task/app/modules/home_screen/views/home_screen_view.dart';

class LoginScreenController extends GetxController {
  RxBool islogined = false.obs;
  Future<void> loginauthentication(String username, String password) async {
    islogined.value = true;

    if (username == "" || password == "") {
      Get.snackbar("Error Create accounts", "Please fill all filed",
          colorText: Colors.white, backgroundColor: Colors.black87);
      islogined.value = false;
    } else if (!username.contains("@") ||
        !username.contains(".") ||
        !username.contains("com")) {
      Get.snackbar("Error Create account", "Enter a valid email address",
          colorText: Colors.white, backgroundColor: Colors.black87);
      islogined.value = false;
    } else if (password.length < 3) {
      Get.snackbar(
          "Error Create account", "Password length minimum 3 characters",
          colorText: Colors.white, backgroundColor: Colors.black87);
      islogined.value = false;
    } else {
      final _ap = Apihelperclass();
      _ap.fetchingdata(username, password);
    }
  }
}
