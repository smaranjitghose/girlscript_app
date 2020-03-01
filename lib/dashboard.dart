import 'package:flutter/material.dart';
import 'package:noob_project/home.dart';
import 'package:noob_project/aboutUs.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex=0;
  PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
          children: <Widget>[
            Home(),
            Center(child:Text("Events()")),
            Center(child:Text("Project()")),
            Center(child:Text("Team())")),
            AboutUs(),
          ],
          onPageChanged: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        // fixedColor: Colors.black,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
          _pageController.animateToPage(
            index,
            duration:Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'HOME',
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.event,
              ),
              title: Text(
                'EVENTS',
                ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.tab,
              ),
              title: Text(
                'PROJECTS',
              ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              title: Text(
                'TEAM',
              ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              title: Text(
                'ABOUT US',
              ),
          ),
        ]
      ),
    );
  }
}