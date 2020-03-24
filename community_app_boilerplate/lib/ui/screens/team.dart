import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Data {
  final String id;
  final String name;
  final String designation;
  final String image;

  const Data({
    this.id,
    this.name,
    this.designation,
    this.image,
  });
}

List<Data> data = [
  const Data(
    id: "1",
    name: "Anush Bhatia",
    designation: "UI/UX",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "2",
    name: "Kislay Kishore",
    designation: "Logistics",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "3",
    name: "Anush Bhatia",
    designation: "President",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "4",
    name: "Avi Sharma",
    designation: "UI/UX",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "5",
    name: "Anuj Sharma",
    designation: "Partner",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "6",
    name: "Sampad Ray",
    designation: "Treasurer",
    image: "assets/images/back.png",
  ),
];

class TeamTile extends StatelessWidget {
  final Data data;
  TeamTile(this.data);

  @override
  Widget build(BuildContext context) {
    final teamThumbnail = new Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: new Container(
        width: 120.0,
        height: 80.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          // Un-comment the below stub of code to display background images
          // image: new DecorationImage(
          //   image: AssetImage(data.image),),
          gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue[500],
              Colors.blue[900],
            ],
          ),
          boxShadow: [
            new BoxShadow(
              color: Colors.grey[400],
              blurRadius: 28.0,
              spreadRadius: 2.0,
              offset: Offset(8, 11),
            ),
          ],
        ),
      ),
    );

    final teamName = new Container(
      constraints: new BoxConstraints(maxWidth: 130.0),
      padding: EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new Text(
            data.name,
            style: new TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
            ),
          ),
          new Container(
            height: 4.0,
          ),
          new Text(
            data.designation,
            style: new TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w800,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
        left: 12.0,
        right: 5.0,
      ),
      child: new Column(
        children: <Widget>[
          teamThumbnail,
          teamName,
        ],
      ),
    );
  }
}

class TeamBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TeamTile(data[0]),
                new TeamTile(data[1]),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TeamTile(data[2]),
                new TeamTile(data[3]),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TeamTile(data[4]),
                new TeamTile(data[5]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.amber[50],
      
      body: new ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (buildContext, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 40.0),
                child: Column(
                  children: <Widget>[
                    new RichText(
                      text: TextSpan(
                        text: "TEAM ",
                        style: new TextStyle(
                          color: Colors.black87,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          //fontFamily: "Poppins",
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "2020",
                            style: TextStyle(
                              color: Colors.amber[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      height: 8.0,
                    ),
                    new Container(
                      child: new Text(
                        "Presenting the board of 20-21",
                        style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    new Container(
                      height: 20.0,
                    ),
                    new Container(
                      height: 45,
                      width: 45,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: new LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.amber[900],
                            Colors.amber[700],
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      height: 100.0,
                    ),
                    new Text(
                      "BOARD",
                      style: new TextStyle(
                        color: Colors.grey[800],
                        fontFamily: "Poppins",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    new Container(
                      height: 5.0,
                    ),
                    new Container(
                      color: Colors.grey[800],
                      height: 3.0,
                      width: 60.0,
                    ),
                  ],
                ),
              ),
              new TeamBody(),
            ],
          ),
        ),
      ),
    );
  }
}
