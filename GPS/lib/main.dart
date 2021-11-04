import 'dart:typed_data';
import 'package:custom_google_map_markers/view/map_marker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(GoogleMapScreen());
}

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(28.535517, 77.391029);

  List<MapMarker> mapMarkers = [];
  List<Marker> customMarkers = [];

  List<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps) {
    bitmaps.asMap().forEach((mid, bmp) {
      customMarkers.add(Marker(
        markerId: MarkerId("$mid"),
        position: locations[mid].coordinates,
        icon: BitmapDescriptor.fromBytes(bmp),
      ));
    });
  }

  @override
  void initState() {
    MarkerGenerator(markerWidgets(), (bitmaps) {
      setState(() {
        mapBitmapsToMarkers(bitmaps);
      });
    }).generate(context);
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Marker Demo'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: customMarkers.toSet(),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 10.0,
          ),
        ),
      ),
    );
  }

  List<Widget> markerWidgets() {
    return locations.map((loc) => MapMarker(loc)).toList();
  }
}
