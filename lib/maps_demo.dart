
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapsDemo extends StatefulWidget {
  @override
  _MapsDemoState createState() => _MapsDemoState();
}

class _MapsDemoState extends State<MapsDemo>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  bool isButtonClicked = false;
  int pagenumber = 0;

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

  String imgurl =
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80';
  @override
  Widget build(BuildContext context) {
    print(isButtonClicked);
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: FlutterMap(
            options: MapOptions(
              center: LatLng(40.730610, -73.935242),
              zoom: 15,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    'https://api.mapbox.com/styles/v1/manjeetkmr18/ckmlv3p3o1ny117qnm11bvcrf/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFuamVldGttcjE4IiwiYSI6ImNrajMzNHNuZDI4MHozMG54cHJpNnZmbW0ifQ.jn7t-kAj-9GNmhwzoPCnsw',
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1IjoibWFuamVldGttcjE4IiwiYSI6ImNrajMzNWNjczA3bmQyeW5xemI4bjFwcWoifQ.SEKTc29XOP0NnMfDpBzKIA',
                  'id': 'mapbox.mapbox-streets-v8'
                },
                tileProvider: NonCachingNetworkTileProvider(),
              ),
              // MarkerLayerOptions(markers: markers)
            ],
          ),
      // Stack(
      //   children: <Widget>[
      //     FlutterMap(
      //       options: MapOptions(
      //         center: LatLng(30.7456311, 76.6462003),
      //         zoom: 18,
      //       ),
      //       layers: [
      //         TileLayerOptions(
      //           urlTemplate:
      //               'https://api.mapbox.com/styles/v1/manjeetkmr18/ckkcl4a5h1yq517mnj7564pw7/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFuamVldGttcjE4IiwiYSI6ImNrajMzNHNuZDI4MHozMG54cHJpNnZmbW0ifQ.jn7t-kAj-9GNmhwzoPCnsw',
      //           additionalOptions: {
      //             'accessToken':
      //                 'pk.eyJ1IjoibWFuamVldGttcjE4IiwiYSI6ImNrajMzNWNjczA3bmQyeW5xemI4bjFwcWoifQ.SEKTc29XOP0NnMfDpBzKIA',
      //             'id': 'mapbox.mapbox-streets-v8'
      //           },
      //           tileProvider: NonCachingNetworkTileProvider(),
      //         ),
      //         MarkerLayerOptions(markers: markers)
      //       ],
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           Stack(
      //             children: [
      //               Container(
      //                 width: 50 * SizeConfig.widthMultiplier,
      //                 height: 6 * SizeConfig.heightMultiplier,
      //                 margin: EdgeInsets.only(
      //                     top: 1.5 * SizeConfig.heightMultiplier),
      //                 decoration: BoxDecoration(
      //                     color: Colors.grey[700],
      //                     border: Border.all(color: Colors.grey, width: 1),
      //                     borderRadius: BorderRadius.circular(50)),
      //                 child: Chip(
      //                   padding: EdgeInsets.only(
      //                       left: 13 * SizeConfig.widthMultiplier),
      //                   backgroundColor: Colors.grey[700],
      //                   shape: StadiumBorder(
      //                     side: BorderSide(
      //                       color: Colors.grey[700],
      //                     ),
      //                   ),
      //                   label: Row(
      //                     children: [
      //                       Container(
      //                         decoration: BoxDecoration(
      //                             shape: BoxShape.circle,
      //                             boxShadow: [
      //                               BoxShadow(
      //                                 color: Colors.orange[50].withOpacity(0.4),
      //                                 blurRadius: 15.0,
      //                               ),
      //                             ]),
      //                         child: Icon(
      //                           Icons.circle,
      //                           color: Colors.orange,
      //                           size: 7 * SizeConfig.imageSizeMultiplier,
      //                         ),
      //                       ),
      //                       SizedBox(
      //                         width: 5.0,
      //                       ),
      //                       Text(
      //                         '15.0124',
      //                         style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 18,
      //                             fontWeight: FontWeight.w800),
      //                       ),
      //                     ],
      //                   ),
      //                   // onPressed: () {},
      //                 ),
      //               ),
      //               Container(
      //                 height: 9 * SizeConfig.heightMultiplier,
      //                 width: 14 * SizeConfig.widthMultiplier,
      //                 decoration: BoxDecoration(
      //                   shape: BoxShape.circle,
      //                 ),
      //                 child: CircleAvatar(
      //                   backgroundImage: NetworkImage(imgurl),
      //                 ),
      //               )
      //             ],
      //           ),
      //           Container(
      //             // height: displayHeight(context) / 17,
      //             height: 6 * SizeConfig.heightMultiplier,
      //             decoration: BoxDecoration(
      //                 color: Colors.grey[700],
      //                 border: Border.all(color: Colors.grey[800]),
      //                 borderRadius: BorderRadius.circular(50)),
      //             padding:
      //                 EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 8.0),
      //             child: Row(
      //               children: [
      //                 Icon(
      //                   Icons.person_add_outlined,
      //                   color: Colors.white,
      //                 ),
      //                 Container(
      //                   height: 4.0 * SizeConfig.heightMultiplier,
      //                   width: 1.0,
      //                   color: Colors.white,
      //                   margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      //                 ),
      //                 Icon(
      //                   Icons.help_outline,
      //                   color: Colors.white,
      //                 )
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),

      //     // isButtonClicked ? bottomRibbon() : bottomRibbonButton(),
      // BottomRibbon(),  

      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Padding(
      //         padding: const EdgeInsets.all(5.0),
      //         child: Container(
      //           margin: const EdgeInsets.only(bottom: 15.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Container(
      //                 child: Row(
      //                   children: [
      //                     BottomCircularIcon(
      //                       icon: 'assets/images/Moving 1.png',
      //                       count: '1',
      //                       percentage: 25,
      //                     ),
      //                     SizedBox(
      //                       width: 10,
      //                     ),
      //                     BottomCircularIcon(
      //                       icon: 'assets/images/image 10.png',
      //                       count: '1',
      //                       percentage: 75,
      //                     ),
      //                     SizedBox(
      //                       width: 10,
      //                     ),
      //                     BottomCircularIcon(
      //                       icon: 'assets/images/pin 1.png',
      //                       count: '1',
      //                       percentage: 35.5,
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               Container(
      //                 margin: const EdgeInsets.only(bottom: 5.0),
      //                 padding: EdgeInsets.only(left: 20, right: 10),
      //                 height: 6 * SizeConfig.heightMultiplier,
      //                 decoration: BoxDecoration(
      //                     color: Colors.grey[700],
      //                     border: Border.all(color: Colors.grey[900]),
      //                     borderRadius: BorderRadius.circular(50)),
      //                 child: Row(
      //                   children: [
      //                     Text('00:00:00',
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 19)),
      //                     SizedBox(width: 10),
      //                     Icon(
      //                       Icons.add,
      //                       color: Colors.white,
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
