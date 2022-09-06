import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:optmistic_task/app/data/api_helper.dart';
import 'package:optmistic_task/app/modules/login_screen/views/widgets/textfield.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final logingetxcontroller = Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assetes/image/WhatsApp Image 2022-09-06 at 09.23.31.jpg",
                fit: BoxFit.cover,
                width: size.width * 0.700,
              ),
              ModelTextfield(
                  iconData: Icons.person,
                  textEditingController: usernamecontroller,
                  label: "Username"),
              SizedBox(
                height: 25,
              ),
              ModelTextfield(
                  iconData: Icons.lock,
                  textEditingController: passwordcontroller,
                  label: "Password"),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 240),
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: size.width * 0.850,
                child: Obx(() {
                  return ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Color(0xff17afb4),
                      )),
                      onPressed: () => logingetxcontroller.loginauthentication(
                          usernamecontroller.text, passwordcontroller.text),
                      child: logingetxcontroller.islogined.value == false
                          ? Text("Log In")
                          : Center(
                              child: CircularProgressIndicator(
                                color: Colors.grey,
                              ),
                            ));
                }),
              )
            ],
          ),
        ));
  }
}
