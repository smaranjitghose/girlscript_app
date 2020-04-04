import 'ui/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:communityappboilerplate/app.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      routes: <String, WidgetBuilder>{
        '/Dashboard': (BuildContext context) => Dashboard(),
      }
    );
  }
}