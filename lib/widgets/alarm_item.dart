import 'package:flutter/material.dart';

Widget AlarmItem(hour, enabled) {
  return Padding(
    padding: EdgeInsets.all(7),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  hour,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
