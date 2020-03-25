import 'package:flutter/material.dart';
// Used this package for the UI of bottom navigation bar
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:noob_project/ui/screens/AboutUs.dart';
import 'package:noob_project/ui/screens/Contactus.dart';
import 'package:noob_project/ui/screens/Events.dart';
import 'package:noob_project/ui/screens/Project.dart';
import 'package:noob_project/ui/screens/home.dart';
import 'package:noob_project/ui/screens/team.dart';

//The BottomNavigationBar of the application is developed here
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0; // It'll be used to store index of current page in the list.
  PageController _pageController; //A page controller lets you manipulate which page is visible in a [PageView]

  @override
  void initState(){
    super.initState();
    _pageController = PageController(); //Used to control the position to which this page view is scrolled.
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( 
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Projectpage())); // FLoating Action Button leads to Project page which describes project of user and it's details
        },
        child: Icon(Icons.code),
        backgroundColor: Colors.amber[800],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, //floating over the [Scaffold.bottomNavigationBar] so that the center of the floating action button lines up with the top of the bottom navigation bar.
      bottomNavigationBar: BubbleBottomBar( // A widget used to create the beautiful bottomNaviagtionBar.
        opacity: 0.2,
        currentIndex: _currentIndex, //The index into items for the current active BottomNavigationBarItem.
        onTap: (index) { //Called when one of the items is tapped.
          setState(() { 
            _currentIndex = index;  //setting up index for different pages to swipe to.
          });
          _pageController.animateToPage( //Use to navigate to different widgets with easeIn animation and a specific time period
            index, 
            duration:Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //location of floatinf action button
        hasNotch: true,
        hasInk: true, // gives a cute ink effect
        inkColor: Colors.black12 ,//optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[ // It stores styling of the icons for the number of pages in the list, for our case it is 4.
          BubbleBottomBarItem(  // style of 1st page
            backgroundColor: Colors.red, //The color of the BottomNavigationBar itself.
            icon: Icon(Icons.dashboard, color: Colors.black,), 
            activeIcon: Icon(Icons.dashboard, color: Colors.red,), // when currently tha page is active
            title: Text("Home") //Text for display of BottomNavigationBar item.
          ),
          BubbleBottomBarItem( // style of 2nd page
            backgroundColor: Colors.deepPurple, //The color of the BottomNavigationBar itself.
            icon: Icon(Icons.people_outline, color: Colors.black,), //The icon of the BottomNavigationBar itself.
            activeIcon: Icon(Icons.people_outline, color: Colors.deepPurple,), //The icon of the active BottomNavigationItem.
            title: Text("Team") //Text for display of BottomNavigationBar item.
          ),
          BubbleBottomBarItem( // style of 3rd page
            backgroundColor: Colors.indigo, //The color of the BottomNavigationBar itself.
            icon: Icon(Icons.info_outline, color: Colors.black,), //The icon of the BottomNavigationBar itself.
            activeIcon: Icon(Icons.info_outline, color: Colors.indigo,), //The icon of the active BottomNavigationItem.
            title: Text("About Us") //Text for display of BottomNavigationBar item.
          ),
          BubbleBottomBarItem( // style of 3rd page
            backgroundColor: Colors.indigo, //The color of the BottomNavigationBar itself.
            icon: Icon(Icons.note, color: Colors.black,), //The icon of the BottomNavigationBar itself.
            activeIcon: Icon(Icons.note, color: Colors.indigo,), //The icon of the active BottomNavigationItem.
            title: Text("Events") //Text for display of BottomNavigationBar item.
          ),
          BubbleBottomBarItem( // style of 4th page
            backgroundColor: Colors.green, //The color of the BottomNavigationBar itself.
            icon: Icon(Icons.mail_outline, color: Colors.black,), //The icon of the BottomNavigationBar itself.
            activeIcon: Icon(Icons.mail_outline, color: Colors.green,), //The icon of the active BottomNavigationItem.
            title: Text("Contact") //Text for display of BottomNavigationBar item.
            ),
            
        ],
      ),
      body: PageView( //Creates a scrollable list that works page by page from an explicit [List] of widgets.
        controller: _pageController,
        children: <Widget>[ // the list of pages we will be naviagting to.
          Hello(),
          TeamPage(),
          AboutUs(),
          Events(),
          ContactUs(),
        ],
        onPageChanged: (int index){ //Called whenever the page in the center of the viewport changes.
          setState(() {
            _currentIndex = index;  // when page/widget got changed it changes the _currentIndex
          });
        },
      ),
    );
  }
}
