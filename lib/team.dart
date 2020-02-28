import 'package:flutter/material.dart';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:90.0),
      child: Container(
        child: Column(
          children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "TEAM ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "2020",
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
              "Presenting the board of 20-21",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]
              ),
            ),
          ),
          Container(
            height: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blueAccent,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Board",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0)
                              ),
                              elevation: 8.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 60.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:12.0),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 19.0,
                                  letterSpacing: 0.5
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: Text(
                                "Designation",
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold
                                  ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0)
                              ),
                              elevation: 8.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 60.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:12.0),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 19.0,
                                  letterSpacing: 0.5
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: Text(
                                "Designation",
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold
                                  ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
          ]
        ),
      ),
    );
  }
}