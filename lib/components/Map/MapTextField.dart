import 'dart:async';
import 'dart:convert';

import 'package:demo_app/conf/const.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTextField extends StatefulWidget {
  final Set<Marker> markers;
  final Completer<GoogleMapController> controller;
  final Location? location;
  final Placemark? placemark;
  final List<Placemark> lstPlaceMark;
  const MapTextField(
      {super.key,
      required this.markers,
      required this.controller,
      required this.location,
      required this.placemark,
      required this.lstPlaceMark});

  @override
  State<MapTextField> createState() => _MapTextFieldState();
}

class _MapTextFieldState extends State<MapTextField> {
  TextEditingController controller = TextEditingController();

  String tokenSession = '020626';
  List lstPlace = [];
  String input = '';

  void searchLocation() async {
    List<Location> locations = await locationFromAddress(input);
    List<Placemark> placeMarkers = await placemarkFromCoordinates(
        locations[0].latitude, locations[0].longitude);
    if (locations.isNotEmpty) {
      setState(() {
        widget.markers.removeWhere(
            (element) => element.markerId.value == 'currentLocation');
        widget.markers.add(
          Marker(
            markerId: const MarkerId('currentLocation'),
            position: LatLng(locations[0].latitude, locations[0].longitude),
            infoWindow: InfoWindow(
              title: input,
            ),
          ),
        );

        lstPlace = placeMarkers;
      });
      widget.controller.future.then((value) => value.animateCamera(
          CameraUpdate.newLatLngZoom(
              LatLng(locations[0].latitude, locations[0].longitude), 16)));
    } else {
      print('No result found');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.placemark != null) {
      setState(() {
        lstPlace = widget.lstPlaceMark;
        controller.text =
            "${widget.placemark!.name!} ${widget.placemark!.subAdministrativeArea!} ${widget.placemark!.administrativeArea!}";
      });
    }
    print(widget.placemark);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 320,
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: TextField(
            onChanged: (value) {
              input = value;
            },
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            controller: controller,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                suffixIcon: InkWell(
                  onTap: () {
                    searchLocation();
                  },
                  child: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.grey.shade600.withOpacity(.6))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.grey.shade600.withOpacity(.6)))),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: lstPlace.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () async {
                    // List<Location> locations =
                    //     await locationFromAddress(lstPlace[index]);
                  },
                  title: Text(lstPlace[index].name!),
                );
              }),
        )
      ],
    );
  }
}
