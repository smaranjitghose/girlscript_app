import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

final inputTextDecoration = new InputDecoration(
    labelStyle: new TextStyle(
      fontSize: 18,
      fontFamily: "Poppins",
      color: Colors.grey[500],
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE46D39)),
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 10));

class _SignUpScreenState extends State<SignUpScreen> {
  String _userName, _email, _password;
  bool _termsCond = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          height: height,
          width: width,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  new Container(
                    height: height / 4.5,
                    width: width,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [Color(0xffFFE2C9), Color(0xffE46D39)],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                  new Positioned(
                    left: width / 1.2,
                    top: height / 16,
                    child: Opacity(
                      opacity: 0.50,
                      child: new Container(
                        transform: Matrix4.rotationZ(19.4),
                        height: height / 12.5,
                        width: height / 12.5,
                        child: new Image(
                            image: AssetImage("assets/images/code.png")),
                      ),
                    ),
                  ),
                  new Positioned(
                      top: height / 26,
                      child: new FlatButton(
                        splashColor: Color.fromRGBO(255, 255, 255, 0.0),
                        onPressed: () {},
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.arrow_back_ios),
                            new SizedBox(width: 4),
                            new Text("Back",
                                style: new TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      )),
                  new Positioned(
                    top: height / 5.8,
                    left: width / 20,
                    child: new Text(
                      "Create New Account",
                      style: new TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              new SizedBox(height: height / 30),
              new Form(
                key: _formKey,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: width * 0.80,
                      child: new TextFormField(
                        cursorColor: Color(0xffE46D39),
                        keyboardType: TextInputType.text,
                        onChanged: (val) {
                          setState(() {
                            _userName = val;
                          });
                        },
                        decoration: inputTextDecoration.copyWith(
                            labelText: "Username",
                            icon: Icon(Icons.person_outline,
                                color: Colors.black54, size: 30)),
                      ),
                    ),
                    new SizedBox(height: height / 40),
                    Container(
                      width: width * 0.80,
                      child: new TextFormField(
                        cursorColor: Color(0xffE46D39),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        onChanged: (val) {
                          setState(() {
                            _password = val;
                          });
                        },
                        decoration: inputTextDecoration.copyWith(
                            labelText: "Password",
                            icon: Icon(Icons.lock_outline,
                                color: Colors.black54, size: 30)),
                      ),
                    ),
                    new SizedBox(height: height / 40),
                    Container(
                      width: width * 0.80,
                      child: new TextFormField(
                        cursorColor: Color(0xffE46D39),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (val) {
                          setState(() {
                            _email = val;
                          });
                        },
                        decoration: inputTextDecoration.copyWith(
                            labelText: "Email",
                            icon: Icon(Icons.mail_outline,
                                color: Colors.black54, size: 30)),
                      ),
                    ),
                    new SizedBox(height: height / 30),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Checkbox(
                            value: _termsCond,
                            onChanged: (bool newValue) {
                              setState(() {
                                _termsCond = newValue;
                              });
                            }),
                        new RichText(
                          text: new TextSpan(
                              text: "I have accepted the ",
                              style: new TextStyle(
                                  color: Colors.grey[700], fontSize: 15,fontFamily: "Poppins",),
                              children: <TextSpan>[
                                new TextSpan(
                                  text: "Terms & Conditions",
                                  style: new TextStyle(
                                    color: Color(0xffFF1F1F),
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ),
                        new SizedBox(width: 15),
                      ],
                    ),
                    new SizedBox(height: height / 40),
                    new RaisedButton(
                      elevation: 6,
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(0.0),
                      child: new Ink(
                        width: 0.82 * width,
                        padding: EdgeInsets.all(12.5),
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5),
                          gradient: new LinearGradient(
                            colors: [Color(0xffFE824A), Color(0xffE16831)],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("SIGN UP ",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            new Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new SizedBox(height: height / 30),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    height: 4,
                    width: width / 5,
                    color: Colors.grey[800],
                  ),
                  new Text(
                    "   SOCIAL LOGIN   ",
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                    ),
                  ),
                  new Container(
                    height: 4,
                    width: width / 5,
                    color: Colors.grey[800],
                  ),
                ],
              ),
              new SizedBox(height: height / 35),
              Container(
                width: 0.82 * width,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: new RaisedButton(
                  elevation: 6,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  color: Colors.black,
                  padding: EdgeInsets.all(9),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 32,
                          width: 32,
                          child: new Image(
                            image: AssetImage("assets/images/github.png"),
                          )),
                      new Text("  GITHUB",
                          style: new TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 18,
                          )),
                      new SizedBox(width: 14),
                    ],
                  ),
                ),
              ),
              new SizedBox(height: height / 60),
              Container(
                width: 0.82 * width,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: new RaisedButton(
                  elevation: 6,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  color: Color(0xff2867B2),
                  padding: EdgeInsets.all(9),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 32,
                          width: 32,
                          child: new Image(
                            image: AssetImage("assets/images/linkedin.png"),
                          )),
                      new Text("  LINKEDIN",
                          style: new TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
              ),
              new SizedBox(height: height / 60),
              Container(
                width: 0.82 * width,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: new RaisedButton(
                  elevation: 6,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  color: Colors.white,
                  padding: EdgeInsets.all(9),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 32,
                          width: 32,
                          child: new Image(
                            image: AssetImage("assets/images/google.png"),
                          )),
                      new Text("  GOOGLE",
                          style: new TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black87,
                            fontSize: 18,
                          )),
                      new SizedBox(width: 6),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
