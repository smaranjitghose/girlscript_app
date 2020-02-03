import 'dart:ui';

import 'package:flutter/material.dart';

class Projectpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4a4a),
        title: Text('Pojects', style: TextStyle(fontSize: 28, fontFamily: 'Playball')),
      ),
      body: Text('hello1'),
    );
  }
}