import 'package:flutter/material.dart';

import '../models/shapes_painter.dart';

class Clock extends StatelessWidget {
  final Function timeString;

  const Clock(this.timeString);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: 500,
                ),
              ),
            ),
          ),
          Text(
            // _timeString.toString(),
            timeString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
