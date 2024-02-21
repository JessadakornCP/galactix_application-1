import 'package:flutter/material.dart';
import 'package:galactix_application/core/base/base_viewmodel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompletedViewModel extends BaseViewModel {
  CompletedViewModel({required BuildContext context});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  GoogleMapController? googleMapController;

  GoogleMapController? mapController;

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final LatLng latLng = const LatLng(
    37.4223,
    -122.0090,
  );

  void dispose() {
    googleMapController?.dispose();
  }
}
