import 'dart:async';

import 'package:geolocator/geolocator.dart' as Postion;
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreenController extends GetxController {
  RxBool switchvalue = false.obs;

  final Completer<GoogleMapController> mapcontroller = Completer();

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<Position> get permissionask => _determinePosition();

  final List<Marker> markers = <Marker>[
    const Marker(
        markerId: MarkerId("1"),
        position: LatLng(20.5937, 78.9629),
        infoWindow: InfoWindow(
          title: "Current loaction",
        ))
  ];

  final CameraPosition initialipostion =
      const CameraPosition(target: LatLng(9.939093, 76.270523), zoom: 13.0);
}
