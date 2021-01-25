import 'package:flutter/material.dart';
import 'package:mapsdemo/size_config.dart';
import 'dart:math';


class BottomCircularIcon extends StatelessWidget {
  final String count, icon;
  final double percentage;
 
  const BottomCircularIcon({Key key, this.count, this.icon, this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10 * SizeConfig.heightMultiplier,
      width: 12 * SizeConfig.widthMultiplier,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
              height: 8 * SizeConfig.heightMultiplier,
      width: 10 * SizeConfig.widthMultiplier,
          child:  CustomPaint(
            foregroundPainter: MyPainter(
                lineColor: Colors.grey[700],
                completeColor: Colors.green,
                completePercent: percentage,
                width: 3.0
            ),
            child: Image.asset(icon),
          ),
        ),
          Positioned(
            top: 6.5 * SizeConfig.heightMultiplier,
            child: Container(
              height: 2 * SizeConfig.heightMultiplier,
              width: 3 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  count,
                  style: TextStyle(color: Colors.white,fontSize: 2 * SizeConfig.textMultiplier),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class MyPainter extends CustomPainter{
  Color lineColor;
  Color completeColor;
  double completePercent;
  double width;
  MyPainter({this.lineColor,this.completeColor,this.completePercent,this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Paint line =  Paint()
        ..color = lineColor
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = width;
    Paint complete =  Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center  =  Offset(size.width/2, size.height/2);
    double radius  = min(size.width/2,size.height/2);
    canvas.drawCircle(
        center,
        radius,
        line
    );
    double arcAngle = 2*pi* (completePercent/100);
    canvas.drawArc(
         Rect.fromCircle(center: center,radius: radius),
        pi/2,
        arcAngle,
        false,
        complete
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}