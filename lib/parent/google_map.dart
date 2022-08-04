import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GooMap extends StatefulWidget {
  const GooMap({Key? key}) : super(key: key);

  @override
  State<GooMap> createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GooMap> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:GoogleMap(initialCameraPosition: _initialCameraPosition,
          ),
        )
    );
  }
}
