import 'package:flutter/material.dart';
import 'package:mapsdemo/size_config.dart';
import 'mapboxdemo.dart';
import 'maps_demo.dart';
import 'mapsdemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Test',
              home: MapsDemo(),
            );
          },
        );
      },
    );
  }
}

// class Test extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(title: 'Progress Button'),
//     );
//   }
// }


// class HomeP extends StatefulWidget {
//   @override
//   _HomePState createState() => _HomePState();
// }
// class _HomePState extends State<HomeP> {
//   bool isButtonPressed = false;
//   int v = 100;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 100,
//               ),
//               RaisedButton(
//                 child: Text('test'),
//                 onPressed: () {
//                   setState(() {
//                     isButtonPressed = true;
//                   });
//                 },
//               ),
//               RaisedButton(
//                 child: Text('press'),
//                 onPressed: () {
//                   setState(() {
//                     v = v + 10;
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//         isButtonPressed
//             ? Center(
//                 child: _dialogBox(context),
//               )
//             : Container()
//       ],
//     ));
//   }

//   Widget _dialogBox(context) {
//     Size size = MediaQuery.of(context).size;
//     return Align(
//       alignment: Alignment.center,
//       child: Container(
//         padding: EdgeInsets.only(left: 20, right: 20),
//         child: Stack(
//           children: <Widget>[
//             Container(
//               padding:
//                   EdgeInsets.only(left: 20, top: 65, right: 20, bottom: 20),
//               margin: EdgeInsets.only(top: 45),
//               decoration: BoxDecoration(
//                   color: Colors.black,
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black,
//                         offset: Offset(0, 10),
//                         blurRadius: 10),
//                   ]),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'Now you are Recieving ${v.toString()}%',
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w600,
//                         decoration: TextDecoration.none,
//                         color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'of ',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                       Container(
//                         decoration:
//                             BoxDecoration(shape: BoxShape.circle, boxShadow: [
//                           BoxShadow(
//                             color: Colors.orange[50].withOpacity(0.4),
//                             blurRadius: 10.0,
//                           ),
//                         ]),
//                         child: Icon(
//                           Icons.circle,
//                           color: Colors.orange,
//                           size: 30,
//                         ),
//                       ),
//                       Text(
//                         ' Tokens while moving',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 22,
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: RaisedButton(
//                       onPressed: () {
//                         // Navigator.of(context).pop();
//                         setState(() {
//                           isButtonPressed = false;
//                         });
//                       },
//                       padding: EdgeInsets.only(
//                           left: size.width * 0.1,
//                           right: size.width * 0.1,
//                           top: size.width * 0.01,
//                           bottom: size.width * 0.01),
//                       color: Colors.green,
//                       elevation: 8,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50.0)),
//                       child: Text(
//                         'Got it',
//                         style: TextStyle(color: Colors.white, fontSize: 30),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 20,
//               right: 20,
//               top: -35,
//               child: CircleAvatar(
//                 backgroundColor: Colors.transparent,
//                 radius: 70,
//                 child: ClipRRect(
//                     borderRadius: BorderRadius.all(Radius.circular(45)),
//                     child: Image.asset("assets/images/stars.png")),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Asset> images = List<Asset>();
//   String _error;

//   @override
//   void initState() {
//     super.initState();
//   }

//   Widget buildGridView() {
//     if (images != null)
//       return GridView.count(
//         crossAxisCount: 3,
//         children: List.generate(images.length, (index) {
//           Asset asset = images[index];
//           return AssetThumb(
//             asset: asset,
//             width: 300,
//             height: 300,
//           );
//         }),
//       );
//     else
//       return Container(color: Colors.white);
//   }

//   Future<void> loadAssets() async {
//     setState(() {
//       images = List<Asset>();
//     });

//     List<Asset> resultList;
//     String error;

//     try {
//       resultList = await MultiImagePicker.pickImages(
//         maxImages: 300,
//       );
//     } on Exception catch (e) {
//       error = e.toString();
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       images = resultList;
//       if (error == null) _error = 'No Error Dectected';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Center(child: Text('Error: $_error')),
//             RaisedButton(
//               child: Text("Pick images"),
//               onPressed: loadAssets,
//             ),
//             Expanded(
//               child: buildGridView(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }