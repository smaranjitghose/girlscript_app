import 'package:flutter/material.dart';

class Dummy extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Dummy"),
      ),
      body: Center(
          child: Text('IF YOU SEE THIS PAGE, THIS PAGE NEEDS TO BE CHANGED. REFER TO THE MARK DOWN FILE IN THIS DIRECTORY')
        ),
    );
  }
}