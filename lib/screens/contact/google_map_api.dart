
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapApi extends StatefulWidget {
  const GoogleMapApi({super.key});

  @override
  State<GoogleMapApi> createState() => _GoogleMapApiState();
}

class _GoogleMapApiState extends State<GoogleMapApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(19.10755318601165, 72.83721035425074),
          zoom: 14,
        ),
        markers: {
          const Marker(
            markerId: MarkerId("DJSCE ACM"),
            position: LatLng(19.10755318601165, 72.83721035425074),
          )
        },
      ),
    );
  }
}
