import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomeProvieder extends ChangeNotifier {

  Position position;
  double lo = 0.0;
  double la = 0.0;

  Future<Position> setCurrentLocation() async {


    try {
      this.position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      this.la = position.latitude;
      this.lo = position.longitude;
      notifyListeners();
      return position;
    } catch (e) {
      return null;
    }
  }


}