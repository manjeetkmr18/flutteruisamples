import 'package:flutter/material.dart';

class DialogsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('dialog 1'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog1();
                    });
              },
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text('dialog 2'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog2();
                      });
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text('dialog 3'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustonDialog3();
                      });
                }),
          ],
        ),
      ),
    );
  }
}

class AlertDialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF222020).withOpacity(0.75),
          border: Border.all(color: Colors.grey[700], width: 3),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                      size: 50,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '50 tokens',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey[700],
              thickness: 3,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Expires in:',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Text(
                          ' 72:2:59',
                          style:
                              TextStyle(fontSize: 25, color: Colors.grey[400]),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Distance:',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Text(
                          ' 1.5 km',
                          style:
                              TextStyle(fontSize: 25, color: Colors.grey[400]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlertDialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      backgroundColor: Color(0xFF222020).withOpacity(0.75),
      title: Text('Reward is locked',
          style: TextStyle(fontSize: 30, color: Colors.white)),
      content: Text(
        "Watch a short video advert to unlock it",
        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
      ),
      actions: <Widget>[
        Container(
          alignment: FractionalOffset.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                
                child: Text('test1',style: TextStyle(color: Colors.white),),
              ),
              Container(
                 alignment: Alignment.center,
                child: Text('test1',style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ],
    
    );
  }
}

class CustonDialog3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Color(0xFF222020).withOpacity(0.75),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 260,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 10),
                child: Column(
                  children: [
                    Text(
                      'Moving',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Now you are Recieving 100%',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'of ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
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
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      padding: EdgeInsets.only(
                          left: 100, right: 100, top: 10, bottom: 10),
                      color: Colors.green,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Got it',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: -80,
                child: Image.asset(
                  'assets/images/stars.png',
                  height: 150,
                )),
          ],
        ));
  }
}
