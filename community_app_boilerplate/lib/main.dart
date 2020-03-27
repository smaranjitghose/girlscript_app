import 'package:flutter/material.dart';
import 'package:communityappboilerplate/app.dart';
import 'package:communityappboilerplate/dummy.dart';

void main() => runApp(appmain());

class appmain extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
        home: MyApp(),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => dummy(),
        });
  }
}