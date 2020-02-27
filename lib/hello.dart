import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noob_project/Contactus.dart';
import 'package:noob_project/Project.dart';
import 'package:noob_project/events.dart';
import 'package:noob_project/team.dart';
import 'Project.dart';
import 'Announcements.dart';
import 'Sponsors.dart';
import 'Contactus.dart';
import 'package:noob_project/home.dart';
import 'package:url_launcher/url_launcher.dart';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  int _currentIndex=0;
  PageController _pageController;
  // s const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: RichText(
      //       text: TextSpan(
      //       style: DefaultTextStyle.of(context).style,
      //       children: <TextSpan>[
      //         TextSpan(text: 'GIRLSCRIPT', style: TextStyle(color: Color(0xff7d7d7d), fontFamily: 'Moonhouse', decoration: TextDecoration.none, fontSize: 26)),
      //         TextSpan(text: ' <Chennai>', style: TextStyle(color: Color(0xff7d7d7d), fontFamily: 'Moonhouse', decoration: TextDecoration.none, fontSize: 20)),
      //       ],
      //     )
      //   ),
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         color: Color(0xff7d7d7d),
      //         icon: const Icon(Icons.menu),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         tooltip: MaterialLocalizations
      //             .of(context)
      //             .openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Options',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Announcementspage(),)
                );
              },
              leading: Icon(Icons.announcement),
              title: Text('Announcements',
                  style: TextStyle(
                      color: Color(0xffff4a4a),
                      fontSize: 14
                  )),),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Projectpage(),)
                );
              },
              leading: Icon(Icons.code),
              title: Text('Projects',
                  style: TextStyle(
                      color: Color(0xffff4a4a),
                      fontSize: 14
                  )),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Sponsorspage(),)
                );
              },
              leading: Icon(Icons.monetization_on),
              title: Text('Sponsors',
                  style: TextStyle(
                      color: Color(0xffff4a4a),
                      fontSize: 14
                  )),),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Contactuspage(),)
                );
              },
              leading: Icon(Icons.contacts),
              title: Text('Contant us',
                  style: TextStyle(
                      color: Color(0xffff4a4a),
                      fontSize: 14
                  )),),
          ],
        ),
      ),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: <Widget>[
      //     _buildgstile(context),
      //     _buildupdate1(context, 'Launch of the app', '/assets/images/GSsoc Type Logo Black.png', 'Girlscript Chennai had their app lanched', null)
      //   ],
      // ),
      body: PageView(
        controller: _pageController,
          children: <Widget>[
            Home(),
            Events(),
            Center(child:Text("data 1")),
            Team(),
            Center(child:Text("data 3")),
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


//   _buildgstile(BuildContext context){
//     return Padding(
//       padding: EdgeInsets.all(15.0),
//       child: InkWell(
//         onTap: (){launch('https://www.girlscript.tech/');},
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: 100.0,
//           // decoration: BoxDecoration(
//           //   image: DecorationImage(
//           //     image: AssetImage("images/GSsoc Type Logo Black.png")
//           //   ),
//           // ),
//         ),
//       ),
//     );
//   }
//   _buildupdate1(BuildContext context, String titleText, String postImage, String bodyText, String link) {
//     return Padding(
//         padding: EdgeInsets.all(15.0),
//         child: InkWell(
//             onTap: () {launch(link);},
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: 100.0,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         height: 75.0,
//                         width: 75.0,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                         ),
//                         //child: Image.asset("michael-dam-mEZ3PoFGs_k-unsplash.jpg"),
//                       ),
//                       //RichText(),
//                     ],
//                   ),
//                   Container(),
//                   Row(),
//                   Row(),
//                 ],
//               ),
//             ),
//         )
//     );
//   }
// }