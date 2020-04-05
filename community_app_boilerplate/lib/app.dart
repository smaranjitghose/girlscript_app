import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
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
    Navigator.of(context).pushReplacementNamed('/Dashboard');
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
              colors: [Color(0xffFE5858),Color(0xffEE9617)]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.39,
              height: MediaQuery.of(context).size.height*0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(100)),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 6.0), //(x,y)
                    blurRadius: 15.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/gs.png',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.026,
            ),
            Text(
              'GIRLSCRIPT',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.35,
            ),
            SpinKitRing(
              color: Colors.white,
              size: 40.0,
              lineWidth: 6.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Text(
              'Let\'s Code For Freedom',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0
              ),
            )
          ],
        ),
      ),
    );
  }
}