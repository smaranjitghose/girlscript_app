import 'package:flutter/material.dart';
import 'EventPage.dart';
import 'EventRegistration.dart';

final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

final headerTextStyle = baseTextStyle.copyWith(
    color: Color(0xFF263238), fontSize: 21.0, fontWeight: FontWeight.w600);

final regularTextStyle = baseTextStyle.copyWith(
    color: Colors.black87, fontSize: 12.0, fontWeight: FontWeight.w500);

final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 14.0);

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class Data {
  final String id;
  final String eventName;
  final String organizer;
  final String date;
  final String time;
  final String venue;
  final String fee;
  final String image;

  const Data(
      {this.id,
      this.eventName,
      this.organizer,
      this.date,
      this.time,
      this.venue,
      this.fee,
      this.image});
}

List<Data> data = [
  const Data(
    id: "1",
    eventName: "Event Name 1",
    date: "12-04-20",
    fee: "200",
    organizer: "XYZ",
    time: "10:00 - 12:00",
    venue: "ABC",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "2",
    eventName: "Event Name 2",
    date: "12-04-20",
    fee: "200",
    organizer: "XYZ",
    time: "10:00 - 12:00",
    venue: "Visveswariya Auditorium",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "3",
    eventName: "Event Name 3",
    date: "12-04-20",
    fee: "200",
    organizer: "XYZ",
    time: "10:00 - 12:00",
    venue: "ABC",
    image: "assets/images/back.png",
  ),
  const Data(
    id: "4",
    eventName: "Event Name 4",
    date: "12-04-20",
    fee: "200",
    organizer: "XYZ",
    time: "10:00 - 12:00",
    venue: "ABC",
    image: "assets/images/back.png",
  ),
];

class EventRow extends StatelessWidget {
  final Data data;
  EventRow(this.data);

  @override
  Widget build(BuildContext context) {
    final eventCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 6.0, 5.0, 1.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 5.0),
          new Text(
            data.eventName,
            style: headerTextStyle,
          ),
          new Container(
            width: 3.0,
          ),
          new Text("By " + data.organizer, style: subHeaderTextStyle),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 5.0),
            height: 2.0,
            width: 30.0,
            color: Colors.brown[700],
          ),
          new Container(
            width: 3.0,
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.date_range,
                size: 20.0,
                color: Colors.black45,
              ),
              new Text(
                " " + data.date + ", " + data.time,
                style: regularTextStyle,
              ),
            ],
          ),
          new Container(height: 4.0),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.place,
                size: 20.0,
                color: Colors.black45,
              ),
              new Text(
                " " + data.venue,
                style: regularTextStyle,
              ),
            ],
          ),
          new Container(
            height: 4.0,
          ),
          new Row(
            children: <Widget>[
              new Container(
                width: 20.0,
              ),
              new RaisedButton(
                // onLongPress: () {},
                child: new Text(
                  "Register",
                  style: new TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                elevation: 5,
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 5.0,
                ),
                color: Colors.black87,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (BuildContext context)=>EventRegisteration())
                  );
                },
              ),
            ],
          )
        ],
      ),
    );

    final eventThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
      ),
      child: CircleAvatar(
        radius: 52.0,
        backgroundImage: AssetImage(data.image),
      ),
    );

    final eventCard = new Container(
      height: 180.0,
      margin: new EdgeInsets.only(
        left: 42.0,
      ),
      decoration: new BoxDecoration(
          color: Colors.orange[50],
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              blurRadius: 10.0,
              color: Colors.black12,
              offset: new Offset(0.0, 10.0),
            ),
          ]),
      child: eventCardContent,
    );

    return GestureDetector(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>EventPage()));
        },
      child: Container(
        margin: EdgeInsets.only(
          top: 16.0,
          bottom: 16.0,
          right: 20.0,
          left: 11.0,
        ),
        child: new Stack(
          children: <Widget>[
            eventCard,
            eventThumbnail,
          ],
        ),
      ),
    );
  }
}

class EventBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new EventRow(data[0]),
        new EventRow(data[1]),
        new EventRow(data[2]),
        new EventRow(data[3]),
      ],
    );
  }
}

class _EventsState extends State<Events> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GIRLSCRIPT CHENNAI",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffff4000),Color(0xffffcc66),]
            )
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/icons/transparent_logo.png',
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20.0,
              child: Image.asset('assets/icons/user_placeholder.png')
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: new Column(
            children: <Widget>[
              SizedBox(height:30),
              RichText(
                text: TextSpan(
                  text: "EVENTS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0
                  ),
                  // children: <TextSpan>[
                  //   TextSpan(
                  //     text: "US",
                  //     style: TextStyle(
                  //       color: Colors.amber[800]
                  //     )
                  //   )
                  // ]
                )
              ),
              SizedBox(height:20.0),
              new EventBody(),
            ],
          ),
        ),
      ),
    );
  }
}
