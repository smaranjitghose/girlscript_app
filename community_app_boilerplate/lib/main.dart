import 'package:flutter/material.dart';
import 'package:noob_project/app.dart';
import 'package:noob_project/ui/screens/dashboard.dart';

main(){
  return runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/Dashboard': (BuildContext context) => Dashboard()
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