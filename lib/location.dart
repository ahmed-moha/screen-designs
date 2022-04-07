import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locationn extends StatefulWidget {
  const Locationn({Key? key}) : super(key: key);

  @override
  State<Locationn> createState() => _LocationnState();
}

class _LocationnState extends State<Locationn> {
  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    // serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!serviceEnabled) {
    //   // Location services are not enabled don't continue
    //   // accessing the position and request users of the
    //   // App to enable the location services.
    //   return Future.error('Location services are disabled.');
    // }

    // permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.denied) {
    //   permission = await Geolocator.requestPermission();
    //   if (permission == LocationPermission.denied) {
    //     // Permissions are denied, next time you could try
    //     // requesting permissions again (this is also where
    //     // Android's shouldShowRequestPermissionRationale
    //     // returned true. According to Android guidelines
    //     // your App should show an explanatory UI now.
    //     return Future.error('Location permissions are denied');
    //   }
    // }

    // if (permission == LocationPermission.deniedForever) {
    //   // Permissions are denied forever, handle appropriately.
    //   return Future.error(
    //       'Location permissions are permanently denied, we cannot request permissions.');
    // }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  double? lontitude;
  double? latitude;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableText('LONTITUDE: $lontitude '),
            const SizedBox(
              height: 20, 
            ),
            SelectableText('LATITUDE: $latitude '),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                var loc = await _determinePosition();
                setState(() {
                  lontitude = loc.longitude;
                  latitude = loc.latitude;
                });
                print('LONTITUDE: ${loc.longitude}');
                print('LATITUDE: ${loc.latitude}');
              },
              child: const Text('Get Current Location'),
            ),
          ],
        ),
      ),
    );
  }
}
