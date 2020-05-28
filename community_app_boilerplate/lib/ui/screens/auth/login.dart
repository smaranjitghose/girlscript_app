import 'package:communityappboilerplate/services/auth.dart';
import 'package:communityappboilerplate/ui/screens/auth/signUpScreen.dart';
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
  final FocusNode logInNodeEmailLogin = FocusNode();
  final FocusNode logInNodePasswordLogin = FocusNode();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
        // resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xffffe2c9),Colors.white],begin: Alignment.bottomRight,end: Alignment.topLeft),
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: height*0.04,),
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
            SizedBox(height:height*0.015),
            Container(
              height: height*0.05,
              width: width*0.75,
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
            SizedBox(height: height*0.01),
            Text(
              "Let's Code For Freedom",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
              ),
            ),
            _displayForm(),
            SizedBox(height: height*0.01),
            RaisedButton(
                elevation: 6,
                onPressed:() async {
                  FocusScope.of(context).unfocus();
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
                  width: 0.73*width,
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
                      Text(
                        "SIGN IN ",
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

  Widget _displayEmailInputField(){
    return TextFormField(
      focusNode: logInNodeEmailLogin,
      style: TextStyle(
        color: Color(0xFFE46D39),
      ),
      keyboardType: TextInputType.emailAddress,
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
      focusNode: logInNodePasswordLogin,
      obscureText: true,
      style: TextStyle(
        color: Color(0xFFE46D39),
      ),
      keyboardType: TextInputType.visiblePassword,
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
      Text("Don't have an account? ",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
      ),
      GestureDetector(
        onTap: () {
          toggleView();
        },
        child: Text("SIGN UP",
          style: TextStyle(
            color: Color(0xFFE46D39),
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
      ), 
    ],);
  }

  Widget _displayForm(){
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      // autovalidate: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          // shrinkWrap: true,
          // padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            SizedBox(height: height*0.02),
            _displayEmailInputField(),
            SizedBox(height: height*0.01),
            _displayPasswordField(),
            SizedBox(height: height*0.02),
          ],
        ),
      ),
    );
  }

}