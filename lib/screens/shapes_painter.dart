import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as Vector;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    // Global Angle of the Clock
    var angle = Vector.radians(-90);

    final double r =
        sqrt(size.width * size.width + size.height * size.height) / 2;
    final alpha = atan(size.height / size.width);
    final beta = alpha + angle;
    final shiftY = r * sin(beta);
    final shiftX = r * cos(beta);
    final translateX = size.width / 2 - shiftX;
    final translateY = size.height / 2 - shiftY;
    canvas.translate(translateX, translateY);
    canvas.rotate(angle);

    DateTime now = DateTime.now();

    // Iner Painter of the Clock
    final paint = Paint();
    var center = Offset(size.width / 2, size.height / 2);
    paint.color = Colors.white;
    canvas.drawCircle(center, (size.width / 3) - 5, paint);
    paint.strokeCap = StrokeCap.round;

    // Line of seconds of the clock
    final secondsP1 = center;
    double secondsDegree = 360 / 60 * now.second;
    double x = (size.width / 2) +
        (size.width / 3 - 20) * cos(Vector.radians(secondsDegree));
    double y = (size.height / 2) +
        (size.height / 3 - 20) * sin(Vector.radians(secondsDegree));

    final secondsP2 = Offset(x, y);
    paint.color = Color(0xff65d1ba);
    paint.strokeWidth = 2;
    canvas.drawLine(secondsP1, secondsP2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
