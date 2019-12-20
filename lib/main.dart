import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './widgets/add_alarm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm',
      theme: ThemeData(
        primaryColor: Color(0xff1b2c57),
        accentColor: Color(0xff65d1ba),
      ),
      home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/add-alarm': (context) => AddAlarm(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
