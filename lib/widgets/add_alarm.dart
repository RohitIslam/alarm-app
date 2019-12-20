import 'package:flutter/material.dart';

class AddAlarm extends StatefulWidget {
  @override
  _AddAlarmState createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  //A value representing a time during the day, independent of the date that day might fall on or the time zone. The time is represented by [hour] and [minute] pair. Once created, both values cannot be changed.

  TimeOfDay _selectedTime;
  ValueChanged<TimeOfDay> selectedTime;

  @override
  void initState() {
    _selectedTime = TimeOfDay(
      hour: 12,
      minute: 30,
    );
    super.initState();
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    setState(() {
      _selectedTime = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b2c57),
      appBar: AppBar(
        backgroundColor: Color(0xff1b2c57),
        title: Column(
          children: <Widget>[
            Icon(
              Icons.add_alarm,
              color: Color(0xff65d1ba),
            ),
            Text(
              "Add Alarm",
              style: TextStyle(
                color: Color(0xff65d1ba),
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              child: Text(
                // Returns the localized string representation of this time of day.
                _selectedTime.format(context),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _selectTime(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
