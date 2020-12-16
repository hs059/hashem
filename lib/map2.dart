import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/myProvider.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'home_provieder.dart';



class Map2 extends StatefulWidget {
  static String routeName = 'LocationCollecter';
  @override
  State<StatefulWidget> createState() {
    return LocationCollecterState();
  }
}

class LocationCollecterState extends State<Map2> {
  GoogleMapController mapControllerA;
  GlobalKey<ScaffoldState> scaffolStateA = GlobalKey();
  String labelA = '';

  final LatLng _center = const LatLng(24.4539, 54.3773);

  Future<Position> getCurrentLocation() async {
    Position position = await Provider.of<HomeProvieder>(context, listen: false).setCurrentLocation();
    mapControllerA.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(position.latitude, position.longitude), zoom: 15)));
    return position;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapControllerA = controller;
    getCurrentLocation().then((position) {
      markerPositionA = position;
      _markersA.clear();
      _markersA.add(Marker(
          markerId: MarkerId('userSelection'),
          position: LatLng(position.latitude, position.longitude)));
      setState(() {});
    });
  }

  Set<Marker> _markersA = {};

  Position markerPositionA;

  @override
  Widget build(BuildContext context) {
    MyProvider myProvider =  Provider.of<MyProvider>(context);
    MyProvider myProviderFalse =  Provider.of<MyProvider>(context,listen: false);

    return Padding(
        padding:
        EdgeInsets.only(top: ScreenUtil().setHeight(5)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
                child: Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.close),
                      onTap: () => Navigator.pop(context),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Select location',
                        style: kTextStyleBlack,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(myProvider.changeMarkerPosition.longitude);
                        myProviderFalse.setMarkerPosition(
                          myProvider.changeMarkerPosition
                        );
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Done',
                          style: kTextStyleBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(

              child: Container(
                  child: Stack(
                    children: <Widget>[
                      GoogleMap(
                        zoomControlsEnabled:true,
                        markers: _markersA,
                        mapType:MapType.hybrid ,
                        onTap: (piclerLocation) {
                          setState(() {
                            _markersA.clear();
                            _markersA.add(Marker(
                                markerId: MarkerId('userSelection'),
                                position: LatLng(
                                    piclerLocation.latitude, piclerLocation.longitude)));
                            markerPositionA = Position(
                                latitude: piclerLocation.latitude,
                                longitude: piclerLocation.longitude);
                            myProviderFalse.setChangeMarkerPosition(markerPositionA);

                          });
                        },
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 5.0,
                        ),
                      ),


                    ],
                  )),
              flex: 10,
            ),

          ],
        ),
      );



  }
}