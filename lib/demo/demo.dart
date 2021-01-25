import 'package:flutter/material.dart';

class DemoMultiImage extends StatefulWidget {
  @override
  _DemoMultiImageState createState() => _DemoMultiImageState();
}

class _DemoMultiImageState extends State<DemoMultiImage> {


Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 6,
        enableCamera: false,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#40284A",
          actionBarTitle: "Select Product Images",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#40284A",
        ),
      );
      for (Asset i in resultList) {
      print(i.name + "" + i.getByteData().toString());
      }
      print(resultList.length);
      print((await resultList[0].getThumbByteData(122, 100)));
      print((await resultList[0].getByteData()));
      print((await resultList[0].metadata));
    } on Exception catch (e) {
      error = e.toString();
    }

    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
              flex: 1,
              child:  Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: loadAssets,
                       
                        child: Text(
                          '+ Click Here To Add Photos',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: buildGridView(),
                      )
                    ],
                  ),
                width: 200.0,
                height: 300.0,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: bassanova, width: 3, style: BorderStyle.solid),
                  shape: BoxShape.rectangle,
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/ecx500.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),,
    );
  }
}