import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/myProvider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'home_provieder.dart';

class MapsG extends StatefulWidget {
  static String routeName = 'LocationCollecter';

  @override
  State<StatefulWidget> createState() {
    return LocationCollecterState();
  }
}

class LocationCollecterState extends State<MapsG> {
  GoogleMapController mapController;
  GlobalKey<ScaffoldState> scaffolState = GlobalKey();
  String label = '';

  final LatLng _center = const LatLng(24.4539, 54.3773);

  Future<Position> getCurrentLocation() async {
    Position position = await Provider.of<HomeProvieder>(context, listen: false)
        .setCurrentLocation();
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(position.latitude, position.longitude), zoom: 15)));
    return position;
  }
  animateCamera(LatLng location) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: location,
            zoom: 5),
      ),
    );
    setState(() {});
  }
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    getCurrentLocation().then((position) {
      markerPosition = position;
      _markers.clear();
      _markers.add(Marker(
          markerId: MarkerId('userSelection'),
          position: LatLng(position.latitude, position.longitude)));
      setState(() {});
    });
    animateCamera(LatLng(_center.latitude, _center.longitude));
  }

  Set<Marker> _markers = {};

  Position markerPosition;

  @override
  Widget build(BuildContext context) {
    MyProvider myProvider = Provider.of<MyProvider>(context);
    MyProvider myProviderFalse =
        Provider.of<MyProvider>(context, listen: false);
    return
        //key: scaffolState;

        Stack(
      children: <Widget>[
        GoogleMap(
          zoomControlsEnabled: true,
          markers: {
            Marker(
                markerId: MarkerId('userSelection'),
                position: myProvider.markerPosition == null
        ? LatLng(_center.latitude, _center.longitude)
            : LatLng(myProvider.markerPosition.latitude,
        myProvider.markerPosition.longitude),)
          },
          // onTap: (piclerLocation) {
          //   _markers.clear();
          //   _markers.add(Marker(
          //       markerId: MarkerId('userSelection'),
          //       position:
          //           LatLng(piclerLocation.latitude, piclerLocation.longitude)));
          //   markerPosition = Position(
          //       latitude: piclerLocation.latitude,
          //       longitude: piclerLocation.longitude);
          //   setState(() {});
          // },
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target:LatLng(_center.latitude, _center.longitude),
            zoom: 5,
          ),
        ),
      ],
    );
  }
}
