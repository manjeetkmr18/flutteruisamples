import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  GoogleMapController _controller;
  String _mapStyle;

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/nightmode.json').then((string) {
      _mapStyle = string;
    }).catchError(
      (onError) {
        print(onError.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            onMapCreated: mapCreated,
            initialCameraPosition:
                CameraPosition(target: LatLng(32.045798, 76.659883), zoom: 13.0),
          ),
        ),
      ),
    );
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
      _controller.setMapStyle(_mapStyle);
    });
  }
}
