import 'package:communityappboilerplate/ui/dashboard.dart';
import 'package:communityappboilerplate/ui/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String password;
  String username;

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  void toggleView() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  Widget _displaygslogo() {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage("assets/images/gs.png"),
              alignment: Alignment.center,
              fit: BoxFit.fill)),
    );
  }

  Widget _displayUsernameInputField() {
    return TextFormField(
      onChanged: (value) {
        username = value;
      },
      style: TextStyle(
        color: Color(0xFFE46D39),
      ),
      decoration: InputDecoration(
        icon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        labelText: "Username",
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      cursorColor: Color(0xFFE46D39),
      validator: (val) {
        if (val.isEmpty) {
          return "This field is compulsory";
        } else {
          return null;
        }
      },
    );
  }

  Widget _displayPasswordField() {
    return TextFormField(
      onChanged: (value) {
        password = value;
      },
      obscureText: true,
      style: TextStyle(
        color: Color(0xFFE46D39),
      ),
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.black,
        ),
        labelText: "Password",
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      cursorColor: Color(0xFFE46D39),
      validator: (val) {
        if (val.isEmpty) {
          return "This field is compulsory";
        } else {
          return null;
        }
      },
    );
  }

  Widget _signupRedirect() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account?",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        FlatButton(
          child: Text(
            "SIGN UP",
            style: TextStyle(
                color: Color(0xFFE46D39),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            toggleView();
          },
        ),
      ],
    );
  }

  Widget _displayForm() {
    return Form(
      key: _formKey,
      autovalidate: true,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>[
          SizedBox(height: 30),
          _displayUsernameInputField(),
          SizedBox(height: 20),
          _displayPasswordField(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
        padding: EdgeInsets.all(25),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffffe2c9), Colors.white],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              _displaygslogo(),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 280,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200].withOpacity(0.8),
                      blurRadius: 2,
                      spreadRadius: 3,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Text(
                  "GirlScript Chennai",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 22,
                    color: Color(0xFFE46D39),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Let's Code For Freedom",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
              ),
              _displayForm(),
              SizedBox(height: 20),
              RaisedButton(
                elevation: 6,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  width: 0.73 * devicewidth,
                  padding: EdgeInsets.all(12.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [Color(0xffFE824A), Color(0xffE16831)],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("SIGN IN ",
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
              SizedBox(height: 80),
              _signupRedirect(),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
