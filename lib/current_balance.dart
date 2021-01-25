import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222020),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        centerTitle: true,
        title: Text(
          'Current Balance',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Gps token connected',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
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
                  '15.0124',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            SizedBox(height: 25),
            Text(
              'Wallet number',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 15.0),
            Text(
              '1HOWJ-2SI1ND-SOSK-21',
              style: TextStyle(
                  color: Colors.white, fontSize: 25, letterSpacing: 1),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25.0,
                    color: Colors.green.withOpacity(.4),
                  ),
                ],
              ),
              child: RaisedButton(
                elevation: 10.0,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: Colors.green,
                splashColor: Colors.green,
                child: Text(
                  'Withdraw',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
