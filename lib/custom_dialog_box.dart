import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  final String title,text;
  final Image img;

  const CustomDialogBox(
      { this.title,this.text, this.img});

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      color: Colors.transparent,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Center(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 65, right: 20, bottom: 20),
            margin: EdgeInsets.only(top: 45),
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'of ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.orange[50].withOpacity(0.4),
                          blurRadius: 10.0,
                        ),
                      ]),
                      child: Icon(
                        Icons.circle,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ),
                    Text(
                      ' Tokens while moving',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    padding: EdgeInsets.only(
                        left: size.width * 0.1,
                        right: size.width * 0.1,
                        top: size.width * 0.01,
                        bottom: size.width * 0.01),
                    color: Colors.green,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Text(
                      widget.text,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: -35,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  child: Image.asset("assets/images/stars.png")),
            ),
          ),
        ],
      ),
    ),
    );
  }

  contentBox(context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 65, right: 20, bottom: 20),
            margin: EdgeInsets.only(top: 45),
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'of ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.orange[50].withOpacity(0.4),
                          blurRadius: 10.0,
                        ),
                      ]),
                      child: Icon(
                        Icons.circle,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ),
                    Text(
                      ' Tokens while moving',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    padding: EdgeInsets.only(
                        left: size.width * 0.1,
                        right: size.width * 0.1,
                        top: size.width * 0.01,
                        bottom: size.width * 0.01),
                    color: Colors.green,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Text(
                      widget.text,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: -35,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 70,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  child: Image.asset("assets/images/stars.png")),
            ),
          ),
        ],
      ),
    );
  }
}
