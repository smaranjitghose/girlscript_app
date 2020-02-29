import 'package:flutter/material.dart';
import 'package:noob_project/home.dart';
import 'package:noob_project/splashScreen.dart';
import 'hello.dart';
import 'dart:async';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new Hello()
      },
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}