// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:optmistic_task/app/modules/home/controllers/home_controller.dart';
// import 'package:optmistic_task/app/modules/home_screen/controllers/home_screen_controller.dart';

// class Mapwidget extends StatelessWidget {
//    Mapwidget({Key? key}) : super(key: key);
//   final homeController = Get.put(HomeScreenController());

//   @override
//   Widget build(BuildContext context) {
//     return  GetBuilder<HomeScreenController>(builder: (ctr) {
//         return Stack(
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               child: GoogleMap(
//                   markers: Set<Marker>.of(homeController.markers),
//                   initialCameraPosition: homeController.initialipostion,
//                   mapType: MapType.normal,
//                   onMapCreated: (GoogleMapController controller) async {
//                   }),
//             ),
           
//           ],
//         );