import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _SplashScreen createState() => new _SplashScreen();
}

class _SplashScreen extends State<MyApp> {

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginPage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [0.02,0.6],
              colors: [Color(0xffffffff),Color(0xffE46D39)]
          ),
        ),
        child: Center(
          child: Image.asset(
            'asset/images/gs_launcher.png',
            width: 180.0,
            height: 180.0,
          ),
        ),
      ),
    );
  }
}