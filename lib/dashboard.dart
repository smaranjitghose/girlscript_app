import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:noob_project/AboutUs.dart';
import 'package:noob_project/Contactus.dart';
import 'package:noob_project/Project.dart';
import 'package:noob_project/home.dart';
import 'package:noob_project/team.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0; 
  PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Projectpage()));
        },
        child: Icon(Icons.code),
        backgroundColor: Colors.amber[800],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index, 
            duration:Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12 ,//optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.red, 
            icon: Icon(Icons.dashboard, color: Colors.black,), 
            activeIcon: Icon(Icons.dashboard, color: Colors.red,), 
            title: Text("Home")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.deepPurple, 
            icon: Icon(Icons.people_outline, color: Colors.black,), 
            activeIcon: Icon(Icons.people_outline, color: Colors.deepPurple,), 
            title: Text("Team")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.indigo, 
            icon: Icon(Icons.info_outline, color: Colors.black,), 
            activeIcon: Icon(Icons.info_outline, color: Colors.indigo,), 
            title: Text("About Us")
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.green, 
            icon: Icon(Icons.mail_outline, color: Colors.black,), 
            activeIcon: Icon(Icons.mail_outline, color: Colors.green,), 
            title: Text("Contact")
            )
        ],
      ),
      body: SingleChildScrollView(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            Hello(),
            TeamBody(),
            AboutUs(),
            Contactuspage(),
          ],
          onPageChanged: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}