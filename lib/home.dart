import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noob_project/Contactus.dart';
import 'package:noob_project/Project.dart';
import 'Project.dart';
import 'Announcements.dart';
import 'Sponsors.dart';
import 'Contactus.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildgstile(context),
          _buildupdate1(context, 'Launch of the app', '/assets/images/GSsoc Type Logo Black.png', 'Girlscript Chennai had their app lanched', null),
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
              image: AssetImage("assets/images/GSsoc Type Logo Black.png")
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
                      child: Image.asset("assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg"),
                    ),
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
