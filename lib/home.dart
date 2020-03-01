import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noob_project/Contactus.dart';
import 'package:noob_project/Project.dart';
import 'package:noob_project/Announcements.dart';
import 'package:noob_project/Sponsors.dart';
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
              TextSpan(text: 'GIRLSCRIPT', style: TextStyle(color: Color(0xff7d7d7d), fontFamily: 'Moonhouse', decoration: TextDecoration.none, fontSize: 26)),
              TextSpan(text: ' <Chennai>', style: TextStyle(color: Color(0xff7d7d7d), fontFamily: 'Moonhouse', decoration: TextDecoration.none, fontSize: 20)),
            ],
          )
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations
                  .of(context)
                  .openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Color(0xffffc929),
      ),
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildgstile(context),
          _buildupdate1(context, 'Launch of the app', '/assets/images/GSsoc Type Logo Black.png', 'Girlscript Chennai had their app lanched', null)
        ],
      ),
    );
  }

  _buildgstile(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){launch('https://www.girlscript.tech/');},
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/GSsoc type logo black.png')
            ),
          ),
        ),
      ),
    );
  }
  _buildupdate1(BuildContext context, String titleText, String postImage, String bodyText, String link) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: InkWell(
            onTap: () {launch(link);},
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
                        child: Image.asset('assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg'),
                      ),
                      // RichText(),
                    ],
                  ),
                  Container(),
                  Row(),
                  Row(),
                ],
              ),
            ),
        )
    );
  }
}