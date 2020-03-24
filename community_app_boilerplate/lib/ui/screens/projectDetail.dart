import 'package:flutter/material.dart';
import 'package:noob_project/ui/custom/contributors.dart';
import 'package:noob_project/ui/custom/developers.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatefulWidget {
  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height:90.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "PROJECT: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "NAME",
                          style: TextStyle(
                            color: Colors.deepOrange,
                          )
                        )
                      ]
                    )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:12),
                //url launcher to the project
                child: GestureDetector(
                  onTap: () async{
                    const url='https://www.gssoc.tech/';
                    if(await canLaunch(url)){
                      await launch(url);
                    } else{
                      throw 'Couldn\'t launch the url';
                    }
                  },
                  child: Image.asset(
                    'assets/icons/social/GitHub_Mark.png',
                    height: 36.0,
                    width: 36.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:22.0),
                      child: RichText(
                        text: TextSpan(
                          text: "OBJECTIVE/ ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "DESCRIPTION:",
                              style: TextStyle(
                                color: Colors.deepOrange
                              )
                            )
                          ]
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  // height: MediaQuery.of(context).size.height*75,
                  child: Card(
                    color: Colors.white,
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 16.0,
                          // letterSpacing: 0.3
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:22.0),
                      child: RichText(
                        text: TextSpan(
                          text: "TECHNOLOGY ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "STACK:",
                              style: TextStyle(
                                color: Colors.deepOrange
                              )
                            )
                          ]
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0,left:18.0,right: 18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:4.0,right: 4.0),
                            child: Chip(
                              elevation: 4.0,
                              backgroundColor: Colors.white,
                              avatar: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('assets/icons/tech/flutter.png'),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Flutter",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.blueAccent
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:4.0,right: 4.0),
                            child: Chip(
                              elevation: 4.0,
                              backgroundColor: Colors.white,
                              avatar: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('assets/icons/tech/android.png'),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Android",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green,
                                  ),
                                ),
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:4.0,right: 4.0),
                            child: Chip(
                              elevation: 4.0,
                              backgroundColor: Colors.white,
                              avatar: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('assets/icons/tech/java.png'),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Java",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:4.0,right: 4.0),
                            child: Chip(
                              elevation: 4.0,
                              backgroundColor: Colors.white,
                              avatar: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('assets/icons/tech/c.png'),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Objective - C ",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:4.0,right: 4.0),
                            child: Chip(
                              elevation: 4.0,
                              backgroundColor: Colors.white,
                              avatar: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('assets/icons/tech/swift.png'),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Swift",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:22.0),
                      child: Text(
                        "ADMIN:",
                        style: TextStyle(
                          color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Developers(name: "Himanshu",gurl: "https://www.gssoc.tech/",furl: "https://www.gssoc.tech/",iurl: "https://www.gssoc.tech/",),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:22.0),
                      child: Text(
                        "CONTRIBUTORS:",
                        style: TextStyle(
                          color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Contributors(name: "ABCD",gurl: "https://www.gssoc.tech/",)
            ],
          ),
        ),
      ),
    );
  }
}