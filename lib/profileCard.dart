import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0),
      child: SingleChildScrollView(
        child: Container(
          child: Card(
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:20.0,bottom: 20.0,right: 25.0,left: 25.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.8,
                          ),
                        ),
                        Text(
                          "10:00pm",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 12.0,right: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 6,
                            decoration: InputDecoration.collapsed(
                              // hintText: "Enter your text here",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 65.0,
                              height: 30.0,
                              child: RaisedButton(
                                color: Colors.blueAccent,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)
                                ),
                                child: Text(
                                  "code",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Container(
                              width: 66.0,
                              height: 30.0,
                              child: RaisedButton(
                                color: Colors.blueAccent,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)
                                ),
                                child: Text(
                                  "life",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 138.0,
                          height: 30.0,
                          child: RaisedButton(
                            color: Colors.amber[800],
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:10.0,right: 10.0),
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}