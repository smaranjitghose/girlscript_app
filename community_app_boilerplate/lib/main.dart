import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/auth.dart';
import 'services/user.dart';
import 'ui/dashboard.dart';
import 'ui/screens/auth/login.dart';
import 'ui/screens/auth/signUpScreen.dart';
import 'ui/screens/introScreen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
          home: _getScreenId(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Montserrat',
          ),
          routes: <String, WidgetBuilder>{
            '/Login': (BuildContext context) => LoginScreen(),
            '/SignUp': (BuildContext context) => SignUpScreen(),
          }),
    );
  }

  Widget _getScreenId() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Dashboard(userId: snapshot.data.uid);
        } else {
          return IntroScreen();
        }
      },
    );
  }
}
