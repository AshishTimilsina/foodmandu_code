import 'package:foodmandu/location/google_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';

class LocationCheck extends StatefulWidget {
  const LocationCheck({super.key});

  @override
  State<LocationCheck> createState() => _LocationCheckState();
}

class _LocationCheckState extends State<LocationCheck> {
  Position? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              LocationPermission locationPermission =
                  await Geolocator.requestPermission();
              if (locationPermission == LocationPermission.denied) {
                await Geolocator.requestPermission();
              } else if (locationPermission ==
                  LocationPermission.deniedForever) {
                await Geolocator.openAppSettings();
              } else if (locationPermission == LocationPermission.always ||
                  locationPermission == LocationPermission.whileInUse) {
                position = await Geolocator.getCurrentPosition();
                if (position != null) {
                  List<Placemark> placemarks = await placemarkFromCoordinates(
                      position!.latitude, position!.longitude);
                  // print(placemarks);
                  Get.to(() => MapSample(
                      latitude: position!.latitude,
                      longitude: position!.longitude));
                }
              }
            },
            child: const Text('Location')),
      ),
    );
  }
}
