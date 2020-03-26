import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  bool status0 = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              RichText(
                text: TextSpan(
                  text: "EVENT DETAILS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Container(
                width:MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height*0.83,
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // ListTile(
                    //   leading:  Hero(
                    //     tag: 'flutterLogo',
                    //     child: GestureDetector(
                    //       onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HeroExamplePage())),
                    //       child: Image.asset("assets/images/gslogo.png",height: 50,width: 50,),
                    //     ),
                    //   ),
                    //   title: Text("GirlScript India ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.80,
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: Card(
                        elevation: 0.5,
                        child: Image.network("https://img.globalnpo.org/1/v/t1.0-9/p720x720/67819422_2419421524995290_8230129122731360256_o.jpg?_nc_cat=107&_nc_oc=AQmQJyewTOzieGocPfowWkXqFg6-61YfL81M3rWCfcBaMZKTeJLB2T7ydkA_6FyIfcj98NJVlFSNhb6cxP08xAyb&_nc_ht=scontent.xx&_nc_tp=6&oh=1f77c8e1c715e8b54d8997735a9131a8&oe=5EFFC958",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.00,),
                    ListTile(
                      title: Text("GirlScript India Summit 2019",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      subtitle: Text("Delhi Technological University \nOct 19 -2019 | 9:00 AM",style: TextStyle(fontSize: 15),),
                      isThreeLine: true,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.88,
                      padding: EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Related",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 20),),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                          Text(
                            "GirlScript India Summit 2019 is 3rd edition of the annual summit conducted by India's biggest and first-ever tech education community and organization to support beginners, the GirlScript Foundation. GirlScript India Summit will host the best entrepreneurs, engineers, developers, students, and professors. Get ready to witness 2 days full of tech talks, panels, workshops, hackathon and 21 under 21 awards.",
                            maxLines: 5,
                            style: TextStyle(fontWeight:FontWeight.w600 ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),


                    Text("Related  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),

                    Wrap(
                      spacing: 5,
                      children: <Widget>[
                        RawChip(label: Text(" bit.ly/abcde "),
                          backgroundColor: Colors.grey,
                          selected: status0,
                          selectedColor: Colors.orangeAccent,
                          onSelected: (bool isSelected){
                            setState(() {
                              status0 = isSelected;
                            });
                          },
                          showCheckmark: false,
                        ),
                        RawChip(label: Text(" Required "),
                          backgroundColor: Colors.grey,
                          selected: status1,
                          selectedColor: Colors.orangeAccent,
                          onSelected: (bool isSelected){
                            setState(() {
                              status1 = isSelected;
                            });
                          },
                          showCheckmark: false,
                        ),
                        RawChip(label: Text(" Voluntary "),
                          backgroundColor: Colors.grey,
                          selected: status2,
                          selectedColor: Colors.orangeAccent,
                          onSelected: (bool isSelected){
                            setState(() {
                              status2 = isSelected;
                            });
                          },
                          showCheckmark: false,
                        ),
                        RawChip(label: Text(" Speaker "),
                          backgroundColor: Colors.grey,
                          selected: status3,
                          selectedColor: Colors.orangeAccent,
                          onSelected: (bool isSelected){
                            setState(() {
                              status3 = isSelected;
                            });
                          },
                          showCheckmark: false,
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}


class HeroExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'flutterLogo',
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:Image.asset("assets/images/gslogo.png",height: 200,width:250,),
          ),
        ),
      ),
    );
  }
}