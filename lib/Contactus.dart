import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactuspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4a4a),
        title: Text('Contact Us',
            style: TextStyle(
                fontSize: 28,
                fontFamily: 'Playball'
            )
        ),
      ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //_buildcontactlist('Saswatnayak', 'Associate tech lead', 'https://www.linkedin.com/in/saswat-nayak-a41212166/', '/asset/imagepath', 'https://github.com/swat1998')
          ],
        ),
    );
  }
}