import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Event.dart';

final List<Event> eventsList =
[
  Event('assets/images/girlscriptlogo.jpg','assets/images/codecru_p.jpg',"Code Crusade", "GirlScript,Chennai",
      DateTime.parse("2020-02-08 13:00:00Z"),
      "Home",0,"https://www.girlscript.tech/"),
  Event('assets/images/kzillalogo.jpg','assets/images/mozohack_p.jpg',"Mozohack Hackathon", "SRMKzilla",
      DateTime.parse("2020-03-20 09:00:00Z"),
      "SIIC, 5th Floor, BEL",0,"https://srmdsc.com/"),
  Event('assets/images/girlscriptlogo.jpg','assets/images/soc_p.jpg',"Summer of Code", "GirlScript,Chennai",
      DateTime.parse("2020-02-14 13:00:00Z"),
      "Office",0,"https://www.girlscript.tech/"),
  Event('assets/images/dsclogo.png','assets/images/apidev_p.jpg',"API Dev Workshop", "SRM DSC",
      DateTime.parse("2020-02-02 09:00:00Z"),
      "SIIC, 5th Floor, BEL",0,"https://srmdsc.com/"),
  Event('assets/images/girlscriptlogo.jpg','assets/images/letspy_p.jpg',"LetsPy", "GirlScript,Chennai",
      DateTime.parse("2020-03-20 13:00:00Z"),
      "Hilton",0,"https://www.girlscript.tech/"),
];

Widget buildEventCard(BuildContext context,List list, int index){
  return Padding(
    padding: const EdgeInsets.only(left:12.0,right:12.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: eventCardFormatter(context,list,index),
      ),
    ),
  );
}

Widget eventCardFormatter(BuildContext context,List list, int index){
  return InkWell(
    onTap: ()=>{
      eventDetailDialog(context,list, index),
    },
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:14.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: ExactAssetImage(list[index].logo),
                    radius: 30,
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Row(
                    children: <Widget>[
                      Text(list[index].title, style: new TextStyle(fontSize: 25.0)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:20.0),
                  child: Row(
                    children: <Widget>[
                      Text("by ${list[index].organiser}", style: new TextStyle(fontSize: 14.0)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Venue: ${list[index].venue}", style: new TextStyle(fontSize: 14.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Date: ${DateFormat('EEEE, dd/MM/yy').format(list[index].datetime)
                        .toString()}", style: new TextStyle(fontSize: 14.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Time: ${DateFormat('jm').format(list[index].datetime)
                        .toString()}", style: new TextStyle(fontSize: 14.0)),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    MaterialButton(
                        child: Text("Register",style: new TextStyle(color: Colors.white)),
                        color: Color(0xFFE44C25),
                        elevation: 2,
                        onPressed: _launchURL
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Fees: ₹${list[index].fees.toInt().toString()}",
                        style: new TextStyle(fontSize: 14.0)),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

_launchURL() async {
  const url='https://www.girlscript.tech/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<bool> eventDetailDialog(context,List list, index){
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        color: Color(0xFFE44C25),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:60.0),
                        child: Container(
                          height: 90,
                          width: 90,
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage(list[index].logo),
                            radius: 45,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            border:  Border.all(
                              color: Colors.white,
                              style:
                              BorderStyle.solid,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Text(
                        list[index].title,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        list[index].organiser,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 12,
                  child: Image.asset(list[index].poster),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Venue: ${list[index].venue}",
                          style: TextStyle(fontFamily: 'Comfortaa',fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4.0,bottom:4.0),
                          child: Text(
                            "Date: ${DateFormat('dd/MM/yy').format(list[index].datetime)}",
                            style: TextStyle(fontFamily: 'Comfortaa',fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Time: ${DateFormat('jm').format(list[index].datetime)}",
                          style: TextStyle(fontFamily: 'Comfortaa',fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(bottom:16.0),
                  child: MaterialButton(
                      child: Text("Register",style: new TextStyle(color: Colors.white)),
                      color: Color(0xFFE44C25),
                      elevation: 2,
                      onPressed: _launchURL
                  ),
                ),
              ],
            ),
          ),
        );
      }
  );
}

Widget searchEvent(query) {
  final eventSuggestionList = eventsList.where(
          (p)=>(p.title.toLowerCase().startsWith(query.toLowerCase()))
          ||(p.organiser.toLowerCase().startsWith(query.toLowerCase()))
  ).toList();

  if(query.isEmpty)
    return Center(
      child: Text(
        "Start Typing Name or Event/Organiser",
        style: TextStyle(
            color: Colors.grey
        ),
      ),
    );
  else
    return ListView.builder(
      itemBuilder: (context,index)=> buildEventCard(context,eventSuggestionList, index),
      itemCount: eventSuggestionList.length,
    );
}

class EventSearch extends SearchDelegate<Event>{

  final List<Event> eventsList =
  [
    Event("","","", "",DateTime.now(),"",0,""),
    Event('assets/images/girlscriptlogo.jpg','assets/images/codecru_p.jpg',"Code Crusade", "GirlScript,Chennai",
        DateTime.parse("2020-02-08 13:00:00Z"),
        "Home",0,"https://www.girlscript.tech/"),
    Event('assets/images/kzillalogo.jpg','assets/images/mozohack_p.jpg',"Mozohack Hackathon", "SRMKzilla",
        DateTime.parse("2020-03-20 09:00:00Z"),
        "SIIC, 5th Floor, BEL",0,"https://srmdsc.com/"),
    Event('assets/images/girlscriptlogo.jpg','assets/images/soc_p.jpg',"Summer of Code", "GirlScript,Chennai",
        DateTime.parse("2020-02-14 13:00:00Z"),
        "Office",0,"https://www.girlscript.tech/"),
    Event('assets/images/dsclogo.png','assets/images/apidev_p.jpg',"API Dev Workshop", "SRM DSC",
        DateTime.parse("2020-02-02 09:00:00Z"),
        "SIIC, 5th Floor, BEL",0,"https://srmdsc.com/"),
    Event('assets/images/girlscriptlogo.jpg','assets/images/letspy_p.jpg',"LetsPy", "GirlScript,Chennai",
        DateTime.parse("2020-03-20 13:00:00Z"),
        "Hilton",0,"https://www.girlscript.tech/"),
  ];



  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query="";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return searchEvent(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    return searchEvent(query);


  }

}

Widget eventsHeaderCard(context){
  return Padding(
    padding: const EdgeInsets.fromLTRB(4.0,8.0,4.0,8.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      color: Color(0xFFE44C25),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: <Widget>[
            Text(
              "EVENTS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Comfortaa',
              ),
            ),
            Spacer(),
            IconButton(
              icon: IconTheme(
                  data: new IconThemeData(
                      color: Colors.white),
                  child: Icon(Icons.search)
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: EventSearch(),
                );
              },
            ),
          ],
        ),
      ),
    ),
  );
}

class Announcementspage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Announcements', style: TextStyle(fontSize: 28, fontFamily: 'Playball')),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            eventsHeaderCard(context),
            new Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 36),
                itemCount: eventsList.length,
                itemBuilder: (BuildContext context, int index)=>
                    buildEventCard(context, eventsList, index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}