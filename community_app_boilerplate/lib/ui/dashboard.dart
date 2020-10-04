import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:communityappboilerplate/services/user.dart';
import 'package:communityappboilerplate/ui/screens/Teams.dart';
import 'package:communityappboilerplate/ui/screens/events.dart';
import 'package:communityappboilerplate/ui/screens/home.dart';
import 'package:communityappboilerplate/ui/screens/milestone.dart';
import 'package:communityappboilerplate/ui/screens/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String userId;
  Dashboard({this.userId});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final databaseReference = Firestore.instance;
  int _currentIndex = 0;
  PageController _pageController;
  String name = 'User Name';
  String imageUrl;

  @override
  void initState() {
    super.initState();
    _getUserData();
    _pageController = PageController();
  }

  Future<User> _getUserData() async {
    await databaseReference.collection("users").getDocuments().then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((element) {
        if (element.documentID == widget.userId) {
          setState(() {
            User.uid = element.documentID;
            User.email = element.data['email'];
            User.name = element.data['name'];
            User.profileImageUrl = element.data['profileImageUrl'];
            User.bio = element.data['bio'] ?? '';

            User.college = element.data['college'] ?? '';
          });
        } else {
          return null;
        }
      });
    });
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
        onPageChanged: (int index) {
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
          ]),
    );
  }
}
