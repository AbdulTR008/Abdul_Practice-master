import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'dart:async'; // Add this import statement

class MyBricksScreen extends StatefulWidget {
  const MyBricksScreen({super.key});

  @override
  State<MyBricksScreen> createState() => _MyBricksScreenState();
}

class _MyBricksScreenState extends State<MyBricksScreen> {
  String currentLocation = 'No Data';

  String? lat;
  String? long;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _getCurrentLocation();
    _liveLoction();
  }

  Future<Position?> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Permission Not Granted');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Permission Not Granted');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Permission Denied Pemanently,so we cannot request again');
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<void>? _liveLoction() async {
    try {
      LocationSettings locationSettings = const LocationSettings(
          accuracy: LocationAccuracy.high, distanceFilter: 100);

      Geolocator.getPositionStream(locationSettings: locationSettings)
          .listen((event) {
        lat = event.latitude.toStringAsFixed(2);
        long = event.longitude.toStringAsFixed(2);
      });
      if (lat != null) {
        _openMap(lat, long);
      }
    } catch (e) {
      print('Error =>>>>>>>>>>>>>>>>>>>> $e');
    }
  }

  Future<void>? _openMap(lat, long) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$long';
    print(googleUrl);
    await canLaunchUrlString(googleUrl)
        ? launchUrlString(googleUrl)
        : throw 'Invalid URL';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.scrim,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isLoading
                ? const CircularProgressIndicator(
                    color: Colors.red,
                  )
                : Text(
                    currentLocation,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.background),
                  ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('current Location'),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                _getCurrentLocation();
                _liveLoction();
                setState(() {
                  isLoading = false;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
