import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/clock.dart';
import '../widgets/alarm_item.dart';
// import '../models/shapes_painter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String _timeString;
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );

    setState(() {
      _timeString = _formatDateTime(DateTime.now());
      Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    });

    super.initState();
  }

  // Format the dateTime and returns it as a string.
  String _formatDateTime(DateTime dateTime) {
    return DateFormat("hh:mm").format(dateTime);
  }

  // Gets current time; formats it into the string; update the state
  void _getTime() {
    final DateTime now = DateTime.now();
    final String formatDateTime = _formatDateTime(now);

    setState(() {
      _timeString = formatDateTime;
    });
  }

  String getTimeString() {
    return _timeString.toString();
  }

  Widget _bottomButtons() {
    return _tabController.index == 1
        ? FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, '/add-alarm'),
            backgroundColor: Color(0xff65d1ba),
            child: Icon(
              Icons.add,
              size: 20,
            ),
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Theme.of(context).accentColor,
            indicatorWeight: 4,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.access_time),
                text: "Clock",
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: "Alarm",
              ),
              Tab(
                icon: Icon(Icons.hourglass_empty),
                text: "Timer",
              ),
              Tab(
                icon: Icon(Icons.timer),
                text: "Stopwatch",
              ),
            ],
          ),
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              // Clock
              Clock(getTimeString),
              // Alarm
              Container(
                child: ListView(
                  children: <Widget>[
                    alarmItem(_timeString, false),
                    alarmItem(_timeString, true),
                    alarmItem(_timeString, false),
                  ],
                ),
              ),
              // Timer
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("hierer"),
                    ),
                  ],
                ),
              ),
              // Stopwatch
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("hi112"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _bottomButtons(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
