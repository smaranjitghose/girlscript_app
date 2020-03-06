import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noob_project/Contactus.dart';
//Adding the new AboutUs renamed file...
import 'package:noob_project/AboutUs.dart';
import 'package:noob_project/Project.dart';
import 'package:noob_project/notification.dart';
import 'package:noob_project/Events.dart';
import 'Project.dart';
import 'Announcements.dart';
import 'Contactus.dart';
import 'package:url_launcher/url_launcher.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'GIRLSCRIPT',
                  style: TextStyle(
                      color: Color(0xff7d7d7d),
                      fontFamily: 'Moonhouse',
                      decoration: TextDecoration.none,
                      fontSize: 26)),
              TextSpan(
                  text: ' <Chennai>',
                  style: TextStyle(
                      color: Color(0xff7d7d7d),
                      fontFamily: 'Moonhouse',
                      decoration: TextDecoration.none,
                      fontSize: 20)),
            ],
          ),
        ),
        backgroundColor: Color(0xffffc929),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Notifications()));
              })
        ],
      ),
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildgstile(context),
          _buildupdate1(
              context,
              'Launch of the app',
              '/assets/images/GSsoc-Type-Logo-Black.png',
              'Girlscript Chennai had their app lanched',
              null),
        ],
      ),
    );
  }

  _buildgstile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          launch('https://www.girlscript.tech/');
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/GSsoc-Type-Logo-Black.png')),
          ),
        ),
      ),
    );
  }

  _buildupdate1(BuildContext context, String titleText, String postImage,
      String bodyText, String link) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: InkWell(
          onTap: () {
            launch(link);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(
                          'assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg'),
                    ),
                    RichText(
                      text: TextSpan(text: "Placeholder Text"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

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
                  leading: new Icon(Icons.account_box),
                  title: new Text('About us',
                      style: TextStyle(color: Color(0xffff4a4a), fontSize: 14)),
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ABoutUs(),
                    )),
                  },
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
        });
  }
}
