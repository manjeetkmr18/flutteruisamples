import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapBoxDemo extends StatefulWidget {
  @override
  _MapBoxDemoState createState() => _MapBoxDemoState();
}

class _MapBoxDemoState extends State<MapBoxDemo> {
  var markers = <Marker>[
    Marker(
      width: 30.0,
      height: 30.0,
      point: LatLng(30.7456311, 76.6462003),
      builder: (ctx) => Material(
        color: Colors.transparent,
        elevation: 10.0,
        child: FlutterLogo(
          textColor: Colors.blue,
          key: ObjectKey(Colors.blue),
        ),
      ),
    ),
    Marker(
      width: 30.0,
      height: 30.0,
      point: LatLng(30.74563017192256, 76.64553880691528),
      builder: (ctx) => Material(
        color: Colors.transparent,
        elevation: 10.0,
        child: FlutterLogo(
          textColor: Colors.green,
          key: ObjectKey(Colors.green),
        ),
      ),
    ),
    Marker(
      width: 30.0,
      height: 30.0,
      point: LatLng(30.74524289549256, 76.64642930030824),
      builder: (ctx) => Material(
        color: Colors.transparent,
        elevation: 10.0,
        child: FlutterLogo(
          textColor: Colors.purple,
          key: ObjectKey(Colors.purple),
        ),
      ),
    ),
    Marker(
      width: 30.0,
      height: 30.0,
      point: LatLng(30.74599439476328, 76.64653122425081),
      builder: (ctx) => Material(
        color: Colors.transparent,
        elevation: 10.0,
        child: FlutterLogo(
          textColor: Colors.green,
          key: ObjectKey(Colors.green),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(30.7456311, 76.6462003),
          zoom: 18,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/manjeetkmr18/ckj2snsb1awoa19s39gljzytb/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFuamVldGttcjE4IiwiYSI6ImNrajMzNHNuZDI4MHozMG54cHJpNnZmbW0ifQ.jn7t-kAj-9GNmhwzoPCnsw',
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoibWFuamVldGttcjE4IiwiYSI6ImNrajMzNWNjczA3bmQyeW5xemI4bjFwcWoifQ.SEKTc29XOP0NnMfDpBzKIA',
              'id': 'mapbox.mapbox-streets-v8'
            },
            tileProvider: NonCachingNetworkTileProvider(),
          ),
          MarkerLayerOptions(markers: markers)
        ],
      ),
    );
  }
}
