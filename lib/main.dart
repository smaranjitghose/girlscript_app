import 'package:flutter/material.dart';
import 'package:noob_project/app.dart';
import 'package:noob_project/home.dart';

main(){
  return runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => Hello()
    },
  ));
}
