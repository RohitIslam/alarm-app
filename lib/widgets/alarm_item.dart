import 'package:flutter/material.dart';

Widget alarmItem(hour, enabled) {
  return Padding(
    padding: EdgeInsets.all(17),
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
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Sun",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Mon",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Tue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Switch.adaptive(
              value: enabled,
              onChanged: (bool val) {
                print(val);
              },
              activeColor: Color(0xff65d1ba),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 1,
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
