import 'package:flutter/material.dart';

class Announcementspage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4a4a),
        title: Text('Announcements', style: TextStyle(fontSize: 28, fontFamily: 'Playball')),
      ),
      body: Text('hello2'),
    );
  }
}