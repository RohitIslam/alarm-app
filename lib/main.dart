import 'package:flutter/material.dart';

import './screens/home_screen.dart';

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
      routes: {},
      debugShowCheckedModeBanner: false,
    );
  }
}
