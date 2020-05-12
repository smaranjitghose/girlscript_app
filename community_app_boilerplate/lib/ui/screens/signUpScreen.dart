import 'package:communityappboilerplate/ui/dashboard.dart';
import 'package:communityappboilerplate/ui/screens/Teams.dart';
import 'package:flutter/material.dart';
import 'package:communityappboilerplate/services/signUp.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

final inputTextDecoration = InputDecoration(
    labelStyle: TextStyle(
      fontSize: 18,
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: height / 4.3,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xffFFE2C9), Color(0xffE46D39)],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 1.2,
                    top: height / 16,
                    child: Opacity(
                      opacity: 0.50,
                      child: Container(
                        transform: Matrix4.rotationZ(19.4),
                        height: height / 11,
                        width: height / 11,
                        child:
                            Image(image: AssetImage("assets/images/code.png")),
                      ),
                    ),
                  ),
                  Positioned(
                      top: height * 0.05,
                      left: -width * 0.028,
                      child: FlatButton(
                        splashColor: Color.fromRGBO(255, 255, 255, 0.0),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back_ios,
                              size: 20.0,
                            ),
                            SizedBox(width: 4),
                            Text("Back",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      )),
                  Positioned(
                    top: height / 5.5,
                    left: width / 20,
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.015),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: width * 0.80,
                            child: TextFormField(
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
                                      color: Colors.black87, size: 30)),
                            ),
                          ),
                          SizedBox(height: height / 40),
                          Container(
                            width: width * 0.80,
                            child: TextFormField(
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
                                      color: Colors.black87, size: 30)),
                            ),
                          ),
                          SizedBox(height: height / 40),
                          Container(
                            width: width * 0.80,
                            child: TextFormField(
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
                                      color: Colors.black87, size: 30)),
                            ),
                          ),
                          SizedBox(height: height / 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Checkbox(
                                  value: _termsCond,
                                  onChanged: (bool alue) {
                                    setState(() {
                                      _termsCond = alue;
                                    });
                                  }),
                              RichText(
                                text: TextSpan(
                                    text: "I have accepted the ",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Terms & Condition",
                                        style: TextStyle(
                                          color: Color(0xffFF1F1F),
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ]),
                              ),
                              SizedBox(width: 15),
                            ],
                          ),
                          // SizedBox(height: height / 120),
                          RaisedButton(
                            elevation: 6,
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Dashboard(name,)));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              width: 0.82 * width,
                              padding: EdgeInsets.all(12.5),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFE824A),
                                    Color(0xffE16831)
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("SIGN UP ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Icon(
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
                    SizedBox(height: height / 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 4,
                          width: width / 5,
                          color: Colors.grey[800],
                        ),
                        Text(
                          "SOCIAL LOGIN",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        Container(
                          height: 4,
                          width: width / 5,
                          color: Colors.grey[800],
                        ),
                      ],
                    ),
                    SizedBox(height: height / 40),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: RaisedButton(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {},
                        color: Colors.black,
                        padding: EdgeInsets.all(9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 32,
                                width: 32,
                                child: Image(
                                  image: AssetImage("assets/images/github.png"),
                                )),
                            Text("  GITHUB",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                            SizedBox(width: width * 0.04),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height / 70),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: RaisedButton(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TeamsScreen()),
                          );
                        },
                        color: Color(0xff2867B2),
                        padding: EdgeInsets.all(9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 32,
                                width: 32,
                                child: Image(
                                  image:
                                      AssetImage("assets/images/linkedin.png"),
                                )),
                            Text("  LINKEDIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height / 70),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: RaisedButton(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          signInWithGoogle().whenComplete(() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Dashboard(name, imageUrl);
                                },
                              ),
                            );
                          });
                        },
                        color: Colors.white,
                        padding: EdgeInsets.all(9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 32,
                                width: 32,
                                child: Image(
                                  image: AssetImage("assets/images/google.png"),
                                )),
                            Text("  GOOGLE",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                )),
                            SizedBox(
                              width: width * 0.02,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
