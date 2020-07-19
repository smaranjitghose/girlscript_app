import 'package:communityappboilerplate/ui/screens/Teams.dart';
import 'package:communityappboilerplate/ui/screens/events.dart';
import 'package:communityappboilerplate/ui/screens/home.dart';
import 'package:communityappboilerplate/ui/screens/milestone.dart';
import 'package:communityappboilerplate/ui/screens/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {

  final String userId;
  Dashboard({this.userId});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex=0;
  PageController _pageController;
  String name= 'User Name';
  String imageUrl;

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
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Home(widget.userId),
          Events(),
          Milestone(widget.userId),
          TeamsScreen(),
          Profile(widget.userId),
        ],
        onPageChanged: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
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
              Icons.assignment,
            ),
            title: Text(
              'MILESTONES',
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
              Icons.account_box,
            ),
            title: Text(
              'PROFILE',
            ),
          ),
        ]
      ),
    );
  }
}