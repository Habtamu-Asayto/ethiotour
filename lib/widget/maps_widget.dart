import 'dart:async'; 
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class MapsWidget extends StatelessWidget {
  MapsWidget({Key? key}) : super(key: key);

  Completer<GoogleMapController> controller = Completer();
  TextEditingController _searchController = TextEditingController();

  static const CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static final Marker googlePlexMarker = Marker(
    markerId: MarkerId('googlePlex'),
    infoWindow: InfoWindow(title: 'Google Plex'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(37.42796133580664, -122.085749655962),
  );
  static final Marker googleLakePlex = Marker(
    markerId: MarkerId('LexPlex'),
    infoWindow: InfoWindow(title: 'Lake Plex'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(37.43296265331129, -122.08832357078792),
  );


  static final Polyline polyline = Polyline(
    polylineId: PolylineId('polyline'),
    points: [
      LatLng(37.42796133580664, -122.085749655962),
      LatLng(37.43296265331129, -122.08832357078792),
    ],
    width: 5,
  );
  static final Polygon polygon = Polygon(
    polygonId: PolygonId("polygon"),
    points: [ 
      LatLng(37.43296265331129, -122.08832357078792),
      LatLng(37.42796133580664, -122.085749655962),
      LatLng(37.418, -122.092),
      LatLng(37.435, -122.092),
    ],
    strokeWidth: 5, 
    fillColor: Colors.transparent
  );
  @override
  Widget build(BuildContext context) => Column(
    
    children: [
      SizedBox(height: 23),
      Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _searchController,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(hintText: 'Search cities'),
              onChanged: (value){
                print(value);
              },
            )),
          IconButton(
            onPressed: (){
              
            }, 
            icon: Icon(Icons.search)
          ),
        ],
      ),
      Expanded(
        child: GoogleMap(
              mapType: MapType.normal,
              markers: {
                googlePlexMarker,
                //googleLakePlex
              },
              /*polylines: {
                polyline
              },
              polygons: {
                polygon
              },*/
              initialCameraPosition: kGooglePlex,
              onMapCreated: (GoogleMapController controllers) {
                controller.complete(controllers);
              },
            ),
      ),
    ],
  );
      
}