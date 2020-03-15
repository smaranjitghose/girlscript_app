import 'package:flutter/material.dart';
import 'package:noob_project/app.dart';
import 'package:noob_project/dashboard.dart';

main(){
  return runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      '/Dashboard': (BuildContext context) => Dashboard()
    },
  ));
}
