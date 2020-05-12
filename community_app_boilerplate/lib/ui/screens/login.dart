import 'package:communityappboilerplate/services/auth.dart';
import 'package:communityappboilerplate/ui/screens/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  bool _loading=false;
  String _email,_password,error;

  void toggleView(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
  }
  
  Widget _displaygslogo(){
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage("assets/images/gs.png"),
          alignment: Alignment.center,
          fit: BoxFit.fill 
        )
      ),
    );
  }

  String emailValidator(String value) {
    Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) return '*Required';
    if (!regex.hasMatch(value))
      return '*Enter a valid email';
    else
      return null;
  }

  Widget _displayUsernameInputField(){
    return TextFormField(
      style: TextStyle(
        color: Color(0xFFE46D39),
      ),
      decoration: InputDecoration(
        icon: Icon(Icons.mail_outline,color: Colors.black,),
        labelText: "Email",
        labelStyle: TextStyle(fontSize: 16,color: Colors.grey),
      ),
      cursorColor: Color(0xFFE46D39),
      onChanged: (val){
        setState(() {
          _email=val;
        });
      },
      validator: emailValidator,
    );
  }

  Widget _displayPasswordField(){
    return TextFormField(
      obscureText: true,
      style: TextStyle(
        color: Color(0xFFE46D39),
      ),
      decoration: InputDecoration(
        icon: Icon(Icons.lock,color: Colors.black,),
        labelText: "Password",
        labelStyle: TextStyle(fontSize: 16,color: Colors.grey),
      ),
      cursorColor: Color(0xFFE46D39),
      onChanged: (val){
        setState(() {
          _password=val;
        });
      },
      validator: (val){
        if(val.isEmpty){
          return "This field is compulsory";
        }
        else{
          return null;
        }
      },
    );
  }

  Widget _signupRedirect(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text("Don't have an account?",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
      ),
      FlatButton(
      child: Text("SIGN UP",
      style: TextStyle(
        color: Color(0xFFE46D39),
        fontSize: 15,
        fontWeight: FontWeight.bold
      ),
      ),
      onPressed: () {
        toggleView();
      },
      ), 
    ],);
  }


  Widget _displayForm(){
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
    return _loading 
    ? Container(
      color: Colors.white,
      child: Center(
        child: SpinKitThreeBounce(
          color: Colors.amber[800],
          size: 50.0,
        ),
      ),
    )
    : Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
      padding: EdgeInsets.all(25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xffffe2c9),Colors.white],begin: Alignment.bottomRight,end: Alignment.topLeft),
      ),
      child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
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
          SizedBox(height:10),
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
            child: Text("GirlScript Chennai",
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
              onPressed:() async {
                if(_formKey.currentState.validate()){
                  setState(() => _loading =true);
                  dynamic result = await _auth.signInWithEmailAndPassword(_email,_password);
                  if(result == null){
                    setState(() {
                      error = 'Invalid Credentials';
                      _loading = false;
                    });
                  }
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                width: 0.73*devicewidth,
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
                      )
                    ),
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