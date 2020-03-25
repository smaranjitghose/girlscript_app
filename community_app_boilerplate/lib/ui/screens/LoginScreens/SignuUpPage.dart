import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

final inputFieldDecoration = new InputDecoration(
  filled: true,
  hintStyle: new TextStyle(
    fontSize: 16,
    color: Colors.blue[600],
    fontWeight: FontWeight.w400,
  ),
  fillColor: Color.fromRGBO(255, 255, 255, 0.0),
  border: new OutlineInputBorder(
    borderRadius: BorderRadius.circular(60),
    borderSide: new BorderSide(
      width: 1.0,
      color: Colors.blue[500],
    ),
  ),
  enabledBorder: new OutlineInputBorder(
    borderRadius: BorderRadius.circular(60),
    borderSide: new BorderSide(
      color: Colors.blue[500],
      width: 1.0,
    ),
  ),
);

class _SignUpScreenState extends State<SignUpScreen> {
  String _email, _password; // for storing emails and passwords
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // form Key
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // decorationBox,
              new Stack(
                overflow: Overflow.clip,
                children: <Widget>[
                  new Positioned(
                    right: (0.329 * width),
                    bottom: (0.179 * height),
                    child: Container(
                      height: (0.505 * height),
                      width: (0.505 * height),
                      transform: Matrix4.rotationZ(150),
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(33, 150, 243, 0.7),
                        borderRadius: new BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  new Positioned(
                    child: new Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Container(
                        height: (0.601 * height),
                        width: (0.601 * height),
                        transform: Matrix4.rotationZ(150),
                        decoration: new BoxDecoration(
                          color: Color.fromRGBO(30, 136, 229, 0.7),
                          borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  new Positioned(
                    left: (0.060 * width),
                    top: (0.350 * height),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(
                              right: (0.490 * width), bottom: (0.100 * height)),
                          child: new Text(
                            "Create Account",
                            style: new TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w900,
                              color: Color.fromRGBO(93, 93, 93, 1),
                            ),
                          ),
                        ),
                        new Container(height: 100)
                      ],
                    ),
                  ),
                  new Positioned(
                    bottom: (0.000001 * height),
                    left: (0.129 * width),
                    child: new Form(
                      key: _formKey,
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Stack(
                            children: <Widget>[
                              new Container(
                                height: (0.055 * height),
                                width: (0.055 * height),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.blue[500], width: 1.0),
                                ),
                                child: new Icon(
                                  Icons.person_outline,
                                  color: Colors.blue[500],
                                  size: 28,
                                ),
                              ),
                              Container(
                                width: (0.746 * width),
                                height: (0.056 * height),
                                child: new TextFormField(
                                  decoration: inputFieldDecoration.copyWith(
                                      hintText: "Email"),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (val) => _email = val,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  style: new TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          new Container(height: (0.022 * height)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              new Stack(
                children: <Widget>[
                  new Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.blue[500], width: 1.0),
                    ),
                    height: (0.055 * height),
                    width: (0.055 * height),
                    child: new Icon(Icons.lock_outline,
                        color: Colors.blue[500], size: 28),
                  ),
                  new Container(
                    height: (0.056 * height),
                    width: (0.746 * width),
                    child: new TextFormField(
                      decoration:
                          inputFieldDecoration.copyWith(hintText: "Password"),
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 16,
                        color: Colors.blue[600],
                      ),
                      obscureText: true,
                      onChanged: (val) => _password = val,
                      textAlignVertical: TextAlignVertical.bottom,
                    ),
                  ),
                ],
              ),
              new Container(height: (0.020 * height)),
              new RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.all(0.0),
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Ink(
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue[500], Colors.blue[800]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: (0.056 * height),
                    width: (0.746 * width),
                    decoration: new BoxDecoration(),
                    child: new Text(
                      "REGISTER",
                      style: new TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),





              
              
              new Container(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}


