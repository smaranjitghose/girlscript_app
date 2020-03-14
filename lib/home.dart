import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noob_project/Contactus.dart';
import 'package:noob_project/AboutUs.dart';
import 'package:noob_project/Project.dart';
import 'package:noob_project/notification.dart';
import 'package:noob_project/projectDetail.dart';
import 'package:noob_project/Events.dart';
import 'package:noob_project/team.dart';
import 'package:noob_project/cardCaursel.dart';
import 'package:noob_project/profileCard.dart';
import 'Project.dart';
import 'Announcements.dart';
import 'Contactus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   // title: RichText(
      //   //   text: TextSpan(
      //   //     style: DefaultTextStyle.of(context).style,
      //   //     children: <TextSpan>[
      //   //       TextSpan(
      //   //           text: 'GIRLSCRIPT',
      //   //           style: TextStyle(
      //   //               color: Color(0xff7d7d7d),
      //   //               fontFamily: 'Moonhouse',
      //   //               decoration: TextDecoration.none,
      //   //               fontSize: 26)),
      //   //       TextSpan(
      //   //           text: ' <Chennai>',
      //   //           style: TextStyle(
      //   //               color: Color(0xff7d7d7d),
      //   //               fontFamily: 'Moonhouse',
      //   //               decoration: TextDecoration.none,
      //   //               fontSize: 20)),
      //   //     ],
      //   //   ),
      //   // ),
      //   backgroundColor: Colors.white,
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.notifications,
      //         color: Colors.amber[800],
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //               builder: (BuildContext context) => Notifications()));
      //       })
      //   ],
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.code),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Projectpage(),
          ));
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _menu(context);
              },
            ),
            /*IconButton(icon: Icon(Icons.search), onPressed: () {},),*/
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:80.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: "Hi ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "UserName",
                            style: TextStyle(
                              color: Colors.amber[800]
                            )
                          )
                        ]
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 20.0),
                  child: Text(
                    "Let's Code For Freedom",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ),
                CardCaursel(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Profile(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // _buildgstile(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.all(15.0),
  //     child: InkWell(
  //       onTap: () {
  //         launch('https://www.girlscript.tech/');
  //       },
  //       child: Container(
  //         width: MediaQuery.of(context).size.width,
  //         height: 100.0,
  //         decoration: BoxDecoration(
  //           image: DecorationImage(
  //               image: AssetImage('assets/images/GSsoc-Type-Logo-Black.png')),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // _buildupdate1(BuildContext context, String titleText, String postImage,
  //     String bodyText, String link) {
  //   return Padding(
  //       padding: EdgeInsets.all(15.0),
  //       child: InkWell(
  //         onTap: () {
  //           launch(link);
  //         },
  //         child: Container(
  //           width: MediaQuery.of(context).size.width,
  //           height: 100.0,
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: <Widget>[
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: <Widget>[
  //                   Container(
  //                     height: 75.0,
  //                     width: 75.0,
  //                     decoration: BoxDecoration(
  //                       shape: BoxShape.rectangle,
  //                     ),
  //                     child: Image.asset(
  //                         'assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg'),
  //                   ),
  //                   RichText(
  //                     text: TextSpan(text: "Placeholder Text"),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ));
  // }

  void _menu(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.announcement),
                    title: new Text('Announcements',
                        style:
                            TextStyle(color: Color(0xffff4a4a), fontSize: 14)),
                    onTap: () => {
                          Navigator.of(context).pop(),
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Announcementspage(),
                          )),
                        }),
                new ListTile(
                  leading: new Icon(Icons.event),
                  title: new Text('Events',
                      style: TextStyle(color: Color(0xffff4a4a), fontSize: 14)),
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Events(),
                    )),
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.people),
                  title: new Text('Team',
                      style: TextStyle(color: Color(0xffff4a4a), fontSize: 14)),
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TeamPage(),
                    )),
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.account_box),
                  title: new Text('About us',
                        style: TextStyle(
                            color: Color(0xffff4a4a),
                            fontSize: 14))
                            ,
                  onTap: () => {
                    Navigator.of(context).pop(),
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutUs(),)

                      ),
                  }
                ),
                
                new ListTile(
                  leading: new Icon(Icons.perm_phone_msg),
                  title: new Text('Contact us',
                      style: TextStyle(color: Color(0xffff4a4a), fontSize: 14)),
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Contactuspage(),
                    )),
                  },
                ),
              ],
            ),
          );
        }
      );
    }
}
