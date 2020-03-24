import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/gs_launcher.png',
              width: 180.0,
              height: 180.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top:150.0),
              child: BorderedText(
                strokeWidth: 0.0,
                child: Text(
                  '< CODE FOR FREEDOM >',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decorationColor: Colors.amber[800],
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Fira Code',
                    letterSpacing: 0.6,
                    fontSize: 23.0
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:120.0),
              child: SpinKitPumpingHeart(
                color: Colors.white,
                size: 60.0,
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
