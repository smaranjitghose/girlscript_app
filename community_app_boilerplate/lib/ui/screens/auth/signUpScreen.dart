import 'package:communityappboilerplate/ui/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:communityappboilerplate/services/auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:url_launcher/url_launcher.dart';

final AuthService _authService = AuthService();

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
  bool _loading = false;
  String errorMsg = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String emailValidator(String value) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty) return '*Required';
    if (!regex.hasMatch(value))
      return '*Enter a valid email';
    else
      return null;
  }

  // void _validateRegisterInput() async {
  //   final FormState form = _formKey.currentState;
  //   if (_formKey.currentState.validate()) {
  //     form.save();
  //     setState(() {
  //       _loading=true;
  //     });
  //     try {
  //       if(_termsCond){
  //         AuthResult result = await _auth.createUserWithEmailAndPassword(email: _email,password: _password);
  //         FirebaseUser user = result.user;
  //         UserUpdateInfo userUpdateInfo = UserUpdateInfo();
  //         userUpdateInfo.displayName = _userName;
  //         user.updateProfile(userUpdateInfo).then((onValue) {
  //           Navigator.of(context).push(
  //             MaterialPageRoute(
  //               builder: (context) {
  //                 return Dashboard(userUpdateInfo.displayName,imageUrl);
  //               },
  //             ),
  //           );
  //           Firestore.instance.collection('users').document().setData({'email': _email, 'displayName': _userName}).then((onValue) {
  //             setState(() {
  //               _loading=false;
  //             });
  //           });
  //         });
  //       } else{
  //         setState(() {
  //           errorMsg='Accept the T&C';
  //         });
  //       }

  //     } catch (error) {
  //       switch (error.code) {
  //         case "ERROR_EMAIL_ALREADY_IN_USE":
  //         {
  //           setState(() {
  //             errorMsg = "This email is already in use.";
  //             _loading = false;
  //           });
  //           // showDialog(
  //           //   context: context,
  //           //   builder: (BuildContext context) {
  //           //     return AlertDialog(
  //           //       content: Container(
  //           //         child: Text(errorMsg),
  //           //       ),
  //           //     );
  //           //   }
  //           // );
  //         }
  //         break;
  //         case "ERROR_WEAK_PASSWORD":
  //         {
  //           setState(() {
  //             errorMsg = "The password must be 6 characters long or more.";
  //             _loading = false;
  //           });
  //           // showDialog(
  //           //   context: context,
  //           //   builder: (BuildContext context) {
  //           //     return AlertDialog(
  //           //       content: Container(
  //           //         child: Text(errorMsg),
  //           //       ),
  //           //     );
  //           //   }
  //           // );
  //         }
  //         break;
  //         default:
  //         {
  //           setState(() {
  //             errorMsg = "";
  //           });
  //         }
  //       }
  //     }
  //   } else {
  //     setState(() {
  //       _autoValidate = true;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: height / 4.4,
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
                              child: Image(image: AssetImage("assets/images/code.png")),
                            ),
                          ),
                        ),
                        Positioned(
                            top: height * 0.05,
                            left: -width * 0.028,
                            child: FlatButton(
                              splashColor: Color.fromRGBO(255, 255, 255, 0.0),
                              onPressed: () {
                                Navigator.pop(context);
                              },
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
                                    validator: (value) => value.isEmpty ? '*Required' : null,
                                    decoration: inputTextDecoration.copyWith(labelText: "Username", icon: Icon(Icons.person_outline, color: Colors.black87, size: 30)),
                                  ),
                                ),
                                SizedBox(height: height * 0.015),
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
                                    validator: (value) => value.isEmpty ? '*Required' : null,
                                    decoration: inputTextDecoration.copyWith(labelText: "Password", icon: Icon(Icons.lock_outline, color: Colors.black87, size: 30)),
                                  ),
                                ),
                                SizedBox(height: height * 0.015),
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
                                    validator: emailValidator,
                                    decoration: inputTextDecoration.copyWith(labelText: "Email", icon: Icon(Icons.mail_outline, color: Colors.black87, size: 30)),
                                  ),
                                ),
                                SizedBox(height: height * 0.015),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Checkbox(
                                        value: _termsCond,
                                        onChanged: (bool value) {
                                          setState(() {
                                            _termsCond = value;
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
                                    // SizedBox(width: 15),
                                  ],
                                ),
                                // SizedBox(height: height / 120),
                                RaisedButton(
                                  elevation: 6,
                                  onPressed: () async {
                                    FocusScope.of(context).unfocus();
                                    if (_termsCond) {
                                      if (_formKey.currentState.validate()) {
                                        setState(() {
                                          _loading = true;
                                        });
                                        dynamic result = await _auth.registerWithEmailAndPassword(_userName, _email, _password);
                                        print(result);
                                        switch (result) {
                                          case "ERROR_EMAIL_ALREADY_IN_USE":
                                            {
                                              setState(() {
                                                errorMsg = "This email is already in use.";
                                                _loading = false;
                                              });
                                            }
                                            break;
                                          case "ERROR_WEAK_PASSWORD":
                                            {
                                              setState(() {
                                                errorMsg = "The password must be 6 characters long or more.";
                                                _loading = false;
                                              });
                                            }
                                            break;
                                          case "ERROR_INVALID_EMAIL":
                                            {
                                              setState(() {
                                                errorMsg = "The enter mail is invalid";
                                                _loading = false;
                                              });
                                            }
                                            break;
                                          default:
                                            {
                                              setState(() {
                                                errorMsg = "";
                                              });
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Dashboard(
                                                            userId: result.toString(),
                                                          )));
                                            }
                                        }
                                      }
                                    } else {
                                      setState(() {
                                        errorMsg = 'Please accept the T&C';
                                      });
                                      print('Please accept the T&C');
                                    }
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
                                        colors: [Color(0xffFE824A), Color(0xffE16831)],
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
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Center(
                              child: Text(
                                errorMsg,
                                style: TextStyle(color: Colors.red, fontSize: 11.0),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.015),
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
                          SizedBox(height: height * 0.015),
                          Container(
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: RaisedButton(
                              elevation: 6,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              onPressed: () async {
                             //   await _authService.signInWithGitHub(context).whenComplete(() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Dashboard();
                                      },
                                    ),
                                  );
                             //   });
                              },
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
                          SizedBox(height: height * 0.01),
                          Container(
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: RaisedButton(
                              elevation: 6,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              onPressed: () {},
                              color: Color(0xff2867B2),
                              padding: EdgeInsets.all(9),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      height: 32,
                                      width: 32,
                                      child: Image(
                                        image: AssetImage("assets/images/linkedin.png"),
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
                          SizedBox(height: height * 0.01),
                          Container(
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: RaisedButton(
                              elevation: 6,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              onPressed: () {
                                setState(() {
                                  _loading = true;
                                });
                                _authService.signInWithGoogle().whenComplete(() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Dashboard();
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
