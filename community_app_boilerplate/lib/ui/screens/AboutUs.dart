import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      text: "ABOUT ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "US",
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
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0)
                    ),
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                      child: Column(
                        children: <Widget>[
                          new Wrap(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: "We are India's ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.0
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "First & Biggest ",
                                      style: TextStyle(
                                        color: Colors.amber[800]
                                      )
                                    ),
                                    TextSpan(
                                      text: "Indian Origin Technical Community",
                                      style: TextStyle(
                                        // color: Colors.amber[800]
                                      )
                                    )
                                  ]
                                )
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "GirlScript is a section-8 NON PROFIT company registered under the government of India on the 2nd of June, 2017. GirlScript is open for all organisation and supports beginners in technology and programming. It supports diversity by reserving 50% seats for women & lgbtq in all it's programs worldwide.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.blueGrey
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: RichText(
                  text: TextSpan(
                    text: "OUR ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "GOALS",
                        style: TextStyle(
                          color: Colors.amber[800]
                        )
                      )
                    ]
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.amber,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "WOMEN IN TECH\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "AWARENESS ABOUT\n TECH",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "WOMEN IN TECH\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.brown,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "AWARENESS ABOUT\n TECH",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "SCHOLARSHIP\n AND FELLOWSHIP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(height: 10.0,),
                              Text(
                                "SCHOLARSHIP\n AND FELLOWSHIP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.0
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        ),
    );
  }
}
