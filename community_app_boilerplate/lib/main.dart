import 'package:flutter/material.dart';
import 'package:noob_project/app.dart';
import 'package:noob_project/ui/screens/dashboard.dart';
import 'package:noob_project/utils/blocs/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      theme: theme.getTheme(),
      title: 'GirlScript',
      home: new MyApp(),
      routes: <String, WidgetBuilder>{
        '/Dashboard': (BuildContext context) => Dashboard()
      },
    );
  }
}
