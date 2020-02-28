import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noob_project/projectData.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatefulWidget{
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
                        text: "OUR ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "PROJECTS",
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
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                    width: 300.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)
                      ),
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Container(
                            //   decoration: BoxDecoration(
                            //     image: DecorationImage(
                            //       image: AssetImage('assets/images/GitHub_Mark.png')
                            //     )
                            //   ),
                            // ),
                            Image.asset(
                              "assets/images/GitHub_Mark.png",
                              height: 60.0,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: "Take a look\n",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "at our projects",
                                    style: TextStyle(
                                      // color: Colors.amber[800]
                                    )
                                  )
                                ]
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Container(
                    width: 300.0,
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)
                      ),
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Want to collab with",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "us on a project?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            Text(
                              "connect with us now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                              ),
                            ),
                            SizedBox(height:5.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: (){launch('https://www.girlscript.tech');},
                                  child: Image.asset(
                                    "assets/images/fb.png",
                                    height: 55.0,
                                    width: 60.0,
                                  )
                                ),
                                InkWell(
                                  onTap: (){launch('https://www.girlscript.tech');},
                                  child: Image.asset(
                                    "assets/images/yt.png",
                                    height: 60.0,
                                    width: 60.0,
                                  )
                                ),
                                InkWell(
                                  onTap: (){launch('https://www.girlscript.tech');},
                                  child: Image.asset(
                                    "assets/images/insta.png",
                                    height: 55.0,
                                    width: 60.0,
                                  )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:18.0),
                  child: ProjectData(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}