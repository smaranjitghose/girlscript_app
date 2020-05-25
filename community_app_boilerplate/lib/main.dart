import 'package:communityappboilerplate/services/auth.dart';
import 'package:communityappboilerplate/services/user.dart';
import 'package:communityappboilerplate/ui/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:communityappboilerplate/ui/screens/login.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget{
  Widget build(BuildContext context){
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
        }
      ),
    );
  }

  Widget _getScreenId() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot){
        if(snapshot.hasData) {
          return Dashboard(userId: snapshot.data.uid,);
        } else {
          return LoginScreen();
        }
      }
    );
  }
}