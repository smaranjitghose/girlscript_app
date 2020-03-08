import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

class MyApp extends StatefulWidget {
  @override
  _SplashScreen createState() => new _SplashScreen();
}

class _SplashScreen extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new Hello(),
      image: Image.asset('assets/images/gs_launcher.png',
       alignment: Alignment.center
       ),
      title: new Text('\n\n\n\n\n\nCODE FOR FREEDOM',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Moonhouse',
        fontSize: 18.0
      ),),      
      backgroundColor: Colors.deepOrangeAccent,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.yellowAccent,
    );
  }
}
