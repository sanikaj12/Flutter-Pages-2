import 'package:flutter/material.dart';

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.deepPurpleAccent;
    canvas.drawCircle(Offset(0, 0.0), 50, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)
  {//false : paint call might be optimized away.
    return false;
  }
}
