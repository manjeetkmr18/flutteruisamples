import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  final TextStyle titleStyle =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 30.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1510520434124-5bc7e642b61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black38, BlendMode.multiply)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                  offset: Offset(5.0, 5.0),
                  color: Colors.black26)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'CONGRATS YOU GOT MATCHED',
              textAlign: TextAlign.center,
              style: titleStyle.copyWith(color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25.0,
                    color: Colors.purpleAccent.withOpacity(.4),
                  ),
                ],
              ),
              child: RaisedButton(
                elevation: 10.0,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
             color: Colors.purpleAccent,
                splashColor: Colors.purpleAccent,
                child: Text(
                  'Chat Now',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25.0,
                    color: Colors.purpleAccent.withOpacity(.4),
                  ),
                ],
              ),
              child: RaisedButton(
                elevation: 10.0,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                color: Colors.purpleAccent,
                splashColor: Colors.purpleAccent,
                child: Text(
                  'Later',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
