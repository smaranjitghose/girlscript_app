import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'projectData.dart';

class Projectpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          launch('https://www.girlscript.tech');
        },
        child: Image.asset('assets/icons/social/GitHub_Mark.png'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90.0,
              ),
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  text: "OUR ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35.0),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: "PROJECTS",
                                    style: TextStyle(color: Colors.amber[800]))
                              ])),
                        ],
                      ),
                      SizedBox(height: 60.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(28.0)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 50.0),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: ProjectData(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Container(
                                width: 300.0,
                                child: Card(
                                  color: Colors.orangeAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  elevation: 5.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, bottom: 20.0),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Want to collab with",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "us on a project?",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Divider(
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Connect With Us Now",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0),
                                        ),
                                        SizedBox(height: 5.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            InkWell(
                                                onTap: () {
                                                  launch(
                                                      'https://www.girlscript.tech');
                                                },
                                                child: Image.asset(
                                                  "assets/icons/social/fb.png",
                                                  height: 55.0,
                                                  width: 60.0,
                                                )),
                                            InkWell(
                                                onTap: () {
                                                  launch(
                                                      'https://www.girlscript.tech');
                                                },
                                                child: Image.asset(
                                                  "assets/icons/social/linkedIn.png",
                                                  height: 60.0,
                                                  width: 60.0,
                                                )),
                                            InkWell(
                                                onTap: () {
                                                  launch(
                                                      'https://www.girlscript.tech');
                                                },
                                                child: Image.asset(
                                                  "assets/icons/social/insta.png",
                                                  height: 55.0,
                                                  width: 60.0,
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 55.0,
                    top: 30.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: 300.0,
                        child: GestureDetector(
                          onTap: () {
                            launch('https://www.girlscript.tech');
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0)),
                            elevation: 5.0,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/icons/social/GitHub_Mark.png",
                                    height: 60.0,
                                  ),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: "Take a look\n",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22.0),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "at our projects",
                                                style: TextStyle(
                                                    // color: Colors.amber[800]
                                                    ))
                                          ])),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
