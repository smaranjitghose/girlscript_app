import 'package:flutter/material.dart';
import 'package:communityappboilerplate/app.dart';
import 'package:communityappboilerplate/dummy.dart';

import 'dummy.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
        home: MyApp(),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => Dummy(),
        });
  }
}