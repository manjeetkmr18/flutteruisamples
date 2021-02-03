import 'dart:math';
import 'package:flutter/material.dart';

import 'bottommodel.dart';


class BottomRibbon extends StatefulWidget {
  @override
  _BottomRibbonState createState() => _BottomRibbonState();
}

class _BottomRibbonState extends State<BottomRibbon> {
  bool isButtonClicked = false;
  int pagenumber = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  isButtonClicked ? bottomRibbon() : bottomRibbonButton(),
    );
  }

  Widget bottomRibbon() {
    return Align(
      alignment: Alignment(0.2, 0.7),
      child: Stack(
        children: [
          Container(
            height: 110,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff3f37c9),
                  size: 40,
                ),
                onPressed: () {
                  setState(() {
                    isButtonClicked = false;
                  });
                }),
          ),
          Container(
            margin: EdgeInsets.only(left:50),
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: Colors.black54.withOpacity(0.2),
                border: Border.all(color: Colors.grey)),
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bottomboardlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: BottomBar(
                      icon: bottomboardlist[index].iconpath,
                      title: bottomboardlist[index].title,
                      area: bottomboardlist[index].area,
                      time: bottomboardlist[index].time,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget bottomRibbonButton() {
    return Align(
      alignment: Alignment(1, 0.7),
      child: Container(
        height: 110,
        width: 160,
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff3f37c9),
                  size: 40,
                ),
                onPressed: () {
                  setState(() {
                    isButtonClicked = true;
                  });
                }),
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.black54.withOpacity(0.2),
                  border: Border.all(color: Colors.grey)),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 40,
                width: 20,
                child: CustomPaint(
                  foregroundPainter: BoardIcon(
                      lineColor: Colors.red[700],
                      completeColor: Colors.red,
                      completePercent: 50,
                      width: 2.0),
                  child: Image.asset('assets/images/Moving 1.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class BottomBar extends StatelessWidget {
  final String icon, title, area, time;
  BottomBar({this.icon, this.title, this.area, this.time});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          child: Row(children: [
            SizedBox(width: 20.0),
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              height: 50,
              width: 30,
              child: CustomPaint(
                foregroundPainter: BoardIcon(
                    lineColor: Colors.grey[700],
                    completeColor: Colors.green,
                    completePercent: 50,
                    width: 2.0),
                child: Image.asset(icon),
              ),
            ),
            SizedBox(width: 20.0),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Area: ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      children: <InlineSpan>[
                        TextSpan(
                          text: area,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Time Left: ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      children: <InlineSpan>[
                        TextSpan(
                          text: time,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ]),
          ]),
        ),
      )
    ]);
  }
}

class BoardIcon extends CustomPainter {
  Color lineColor;
  Color completeColor;
  double completePercent;
  double width;
  BoardIcon(
      {this.lineColor, this.completeColor, this.completePercent, this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 1.2, size.height / 2);
    canvas.drawCircle(center, radius, line);
    double arcAngle = 2 * pi * (completePercent / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), pi / 2,
        arcAngle, false, complete);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
