import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noob_project/SocialIcons.dart';

class Projectpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4a4a),
        title: Text('Pojects', style: TextStyle(fontSize: 28, fontFamily: 'Playball')),
      ),
      body: const Icon(SocialIcons.facebook_squared),
    );
  }
}