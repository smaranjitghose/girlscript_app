import 'package:flutter/material.dart';
import 'package:noob_project/ui/screens/LoginScreens/SignuUpPage.dart';
import 'package:noob_project/ui/screens/dashboard.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

// A Layout for InputBoxes
const textInputDecoration = InputDecoration(
  fillColor: Color.fromRGBO(255, 255, 255, 0.09),
  filled: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(60)),
    borderSide: BorderSide(style: BorderStyle.none, width: 0.0),
  ),
  hintStyle:
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 0.01),
    borderRadius: BorderRadius.all(Radius.circular(60)),
  ),
);

// Main Statefull Class
class _SignInPageState extends State<SignInPage> {
  String _email, _password; // for storing emails and passwords
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // form Key
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[500], Colors.blue[800]],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                  height: (0.0899 *
                      MediaQuery.of(context)
                          .size
                          .height)), //Top Spacing Containaer

              // Container for Logo Image
              new Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(30),
                child: new Image(
                  image: AssetImage("assets/images/gs_launcher.png"),
                  height: 200,
                  width: 200,
                ),
              ),
              new Container(
                  height: (0.119 *
                      MediaQuery.of(context).size.height)), // Spacing Container
              new Container(
                // Container For Form
                child: new Form(
                  key: _formKey,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // EMAIL
                      new Container(
                        margin: EdgeInsets.only(
                            bottom:
                                (0.023 * MediaQuery.of(context).size.height)),
                        child: new Stack(
                          children: <Widget>[
                            new Container(
                              height:
                                  (0.060 * MediaQuery.of(context).size.height),
                              width:
                                  (0.060 * MediaQuery.of(context).size.height),
                              child: new Icon(
                                Icons.person_outline,
                                size: 30,
                                color: Colors.blueAccent[200],
                              ),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              width:
                                  (0.746 * MediaQuery.of(context).size.width),
                              height:
                                  (0.060 * MediaQuery.of(context).size.height),
                              child: new TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: textInputDecoration.copyWith(
                                    hintText: "Email"),
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                                onChanged: (val) => _email = (val),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // PASSWORD
                      new Container(
                        margin: EdgeInsets.only(
                            bottom:
                                (0.023 * MediaQuery.of(context).size.height)),
                        child: new Stack(
                          children: <Widget>[
                            new Container(
                              height:
                                  (0.060 * MediaQuery.of(context).size.height),
                              width:
                                  (0.060 * MediaQuery.of(context).size.height),
                              child: new Icon(
                                Icons.lock_outline,
                                size: 30,
                                color: Colors.blueAccent[200],
                              ),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            new Container(
                              width:
                                  (0.746 * MediaQuery.of(context).size.width),
                              height:
                                  (0.060 * MediaQuery.of(context).size.height),
                              child: new TextFormField(
                                //keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                decoration: textInputDecoration.copyWith(
                                    hintText: "Password"),
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                                onChanged: (val) => _password = (val),
                              ),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        width: (0.746 * MediaQuery.of(context).size.width),
                        height: (0.060 * MediaQuery.of(context).size.height),
                        child: new RaisedButton(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "LOGIN",
                              style: new TextStyle(
                                fontSize: 22.5,
                                color: Colors.blue[500],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            elevation: 5.0,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(60),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),

              // Sign Up Text Container
              new Container(
                margin: EdgeInsets.only(
                  top: (0.033 * MediaQuery.of(context).size.height),
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "Don't have an acoount? ",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    new RaisedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      child: new Text(
                        "Sign Up Now",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      elevation: 0.0,
                      color: Color.fromRGBO(255, 255, 255, 0.0),
                      padding: EdgeInsets.all(0.0),
                      splashColor: Color.fromRGBO(255, 255, 255, 0.0),
                      animationDuration: Duration(milliseconds: 10),
                    ),
                  ],
                ),
              ),
              new Container(
                  height: (0.119 * MediaQuery.of(context).size.height)),
              new Container(
                margin: EdgeInsets.only(
                    bottom: 0.088 * MediaQuery.of(context).size.height),
                child: new Text(
                  "Forget Password?",
                  style: new TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
