import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:optmistic_task/app/modules/buttom_navigation/views/buttom_navigation_view.dart';
import 'package:optmistic_task/app/modules/home_screen/views/widget/home_card.dart';
import 'package:optmistic_task/app/modules/home_screen/views/widget/home_pagecard.dart';
import 'package:optmistic_task/app/modules/home_screen/views/widget/newmessage_widget.dart';
import 'package:optmistic_task/app/modules/home_screen/views/widget/prodect_card.dart';
import 'package:optmistic_task/app/modules/home_screen/views/widget/tabe_bard_widget.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  final homeController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            Obx(() {
              return Switch(
                inactiveThumbColor: Colors.grey,
                activeColor: Colors.grey,
                activeTrackColor: Colors.black,
                value: homeController.switchvalue.value,
                onChanged: (value) {
                  homeController.switchvalue.value = value;
                },
              );
            })
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Newmessage(),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.060,
                    ),
                    Text(
                      "Today's Task",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.3570,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Homecard(),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: size.height * 0.350,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Downcard(
                                  cardtext: "Assigned Devlivery Jobs",
                                  howmuch: "12",
                                  color: Color(0xff17afb4),
                                ),
                                Downcard(
                                    color: Color.fromARGB(255, 89, 207, 211),
                                    cardtext: "Today's           Revenue",
                                    howmuch: "5"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.400,
                  child: GoogleMap(
                      initialCameraPosition: homeController.initialipostion,
                      mapType: MapType.normal,
                      onMapCreated: (GoogleMapController controller) async {
                        homeController.mapcontroller.complete(controller);
                      }),
                ),
                Tabebar(),
                ProdectCard()
              ],
            ),
          ),
        ));
  }
}
