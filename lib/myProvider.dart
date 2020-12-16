import 'package:flutter/material.dart';
import 'package:flutter_app/components/models/kommentare.dart';
import 'package:flutter_app/value/string.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'components/models/Interessen.dart';

class MyProvider extends ChangeNotifier {
  Position markerPosition;

  setMarkerPosition(Position position) {
    this.markerPosition = position;
    notifyListeners();
  }

  Position changeMarkerPosition;

  setChangeMarkerPosition(Position position) {
    this.changeMarkerPosition = position;
    notifyListeners();
  }

  animateCamera(LatLng position, GoogleMapController controller) {
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            tilt: 40,
            target: LatLng(position.latitude, position.longitude),
            zoom: 13.2),
      ),
    );
    notifyListeners();
  }

  String paper =
      '''Lust auf italienisches Essen mit einem guten Gläschen Wein? Sed ut 
perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremque laudantium,
 totam rem aperiam, eaque ipsa quae ab.''';

  setPaper(String value) {
    this.paper = value;
    notifyListeners();
  }

  String changePaper;

  setChangePaper(String value) {
    this.changePaper = value;
    notifyListeners();
  }

  List<InteressenModel> allInteressen = [
    InteressenModel(
      title: 'kochen',
      img: kochenImg,
    ),
    InteressenModel(
      title: 'wein',
      img: weinImg,
    ),
    InteressenModel(
      title: 'lesen',
      img: lesenImg,
    ),
    InteressenModel(
      title: 'reisen',
      img: reisenImg,
    ),
    InteressenModel(
      title: 'kunst',
      img: kunstImg,
    ),
    InteressenModel(
      title: 'musik',
      img: musikImg,
    ),
    InteressenModel(
      title: 'radsport',
      img: radsportImg,
    ),
    InteressenModel(
      title: 'wandern',
      img: wandernImg,
    ),
  ];
  List<KomentareModel> allKomentare = [
    KomentareModel(
      name: 'Antonia',
      title:
          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem...',
    ),
    KomentareModel(
      name: 'Matias',
      title:
          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium.',
    ),
  ];

  addToAllKomentare() {
    allKomentare.add(KomentareModel(name: this.name, title: this.title));
    notifyListeners();
  }

  removeFromAllKomentare(int index) {
    allKomentare.removeAt(index);
    notifyListeners();
  }

  tapMarker(
    LatLng piclerLocation,
    Set<Marker> markersA,
  ) {
    markersA.clear();
    markersA.add(Marker(
        markerId: MarkerId('userSelection'),
        position: LatLng(piclerLocation.latitude, piclerLocation.longitude)));
    Position markerPositionA = Position(
        latitude: piclerLocation.latitude, longitude: piclerLocation.longitude);
    setChangeMarkerPosition(markerPositionA);
    notifyListeners();
  }

  String name = '';

  setName(String value) {
    this.name = value;
    notifyListeners();
  }

  String title = '';

  setTitle(String value) {
    this.title = value;
    notifyListeners();
  }
}
