import 'package:flutter/material.dart';
import 'package:noob_project/cardCaursel.dart';
import 'package:noob_project/profileCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:90.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: "Hi ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "UserName",
                            style: TextStyle(
                              color: Colors.amber[800]
                            )
                          )
                        ]
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 20.0),
                  child: Text(
                    "Let's Code For Freedom",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ),
                CardCaursel(),
                Profile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}