import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:noob_project/ui/screens/AboutUs.dart';
import 'package:noob_project/ui/screens/Events.dart';
import 'package:noob_project/ui/screens/Project.dart';
import 'package:noob_project/ui/screens/home.dart';
import 'package:noob_project/ui/screens/team.dart';
import 'package:noob_project/utils/blocs/theme.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    Color color = theme.isDarkModeEnabled() ? Colors.white : Colors.black;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
              color: Colors.orange,
              icon: theme.isDarkModeEnabled()
                  ? Icon(Icons.wb_sunny)
                  : Icon(Icons.brightness_2),
              onPressed: () {
                theme.switchTheme();
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => Projectpage()));
        },
        child: Icon(Icons.code),
        backgroundColor: Colors.amber[800],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor:
            theme.isDarkModeEnabled() ? Colors.black : Colors.white,
        opacity: .2,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: color,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.people_outline,
                color: color,
              ),
              activeIcon: Icon(
                Icons.people_outline,
                color: Colors.deepPurple,
              ),
              title: Text("Team")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.info_outline,
                color: color,
              ),
              activeIcon: Icon(
                Icons.info_outline,
                color: Colors.indigo,
              ),
              title: Text("About Us")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.mail_outline,
                color: color,
              ),
              activeIcon: Icon(
                Icons.mail_outline,
                color: Colors.green,
              ),
              title: Text("Contact"))
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Hello(),
          Events(),
          TeamPage(),
          AboutUs(),
        ],
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
