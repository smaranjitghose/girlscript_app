import 'package:flutter/material.dart';
import 'package:noob_project/app.dart';
import 'package:noob_project/ui/screens/dashboard.dart';
import 'package:noob_project/ui/screens/LoginScreens/signIn.dart';

main(){
  return runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/LoginPage': (BuildContext context) => SignInPage()
    },
  ));
}
// void main() => runApp(App());

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Poppins'
//       ),
//       home: new MyApp(),
//       routes: <String, WidgetBuilder>{
//         '/Dashboard': (BuildContext context) => Dashboard()
//       },
//     );
//   }
// }