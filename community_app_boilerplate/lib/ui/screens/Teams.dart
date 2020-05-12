import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamsScreen extends StatefulWidget {
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamsScreen> {
  var boardMembers = [
    {
      "imgUrl": 'assets/images/team/smaranjit_ghose.jpg',
      "name": "Smaranjit Ghose",
      "linkedin": "https://www.linkedin.com/in/smaranjitghose/",
      "github": "https://github.com/smaranjitghose",
    },
    {
      "imgUrl": "assets/images/team/anush_bhatia.jpg",
      "name": "Anush Bhatia",
      "linkedin": "https://www.linkedin.com/in/anush-bhatia-aa500a158/",
      "github": "https://github.com/anushbhatia",
    },
    {
      "imgUrl": 'assets/images/team/saswat_nayak.jpg',
      "name": 'Saswat Nayak',
      "linkedin": 'https://www.linkedin.com/in/saswat-nayak-a41212166/',
      "github": 'https://github.com/swat1998',
    },
    {
      "imgUrl": 'assets/images/team/ousnik_polley.jpg',
      "name": 'Ousnik Polley',
      "linkedIi": 'https://www.linkedin.com/in/ousnikpolley/',
      "github": 'https://github.com/ousnik',
    },
    {
      "imgUrl": 'assets/images/team/sukkrit_sharma.jpg',
      "name": 'Sukkrit Sharma',
      "linkedin": 'https://www.linkedin.com/in/sukkritsharma/',
      "github": 'https://github.com/sukkritsharmaofficial',
    },
  ];

  var technicalTeam = [
    {
      "name": "Suhrid Datta",
      "linkedin": "https://www.linkedin.com/in/suhrid-datta-834863157/",
      "github": "https://github.com/suhriddatta",
      "imgUrl": "assets/images/team/suhrid_datta.jpg",
    },
    {
      "name": "Bidisha Mukherjee",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "assets/images/team/bidisha_mukherjea.jpg",
    },
    {
      "name": "Ambarish Dattar",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "assets/images/team/ambarish_datar.jpg",
    },
    {
      "name": "Apoorva Gupta",
      "linkedin": "https://www.linkedin.com/in/apoorvagupta30/",
      "github": " ",
      "imgUrl": "assets/images/team/apoorva_gupta.jpg",
    },
    {
      "name": "Rishabh Verma",
      "linkedin": "",
      "github": " ",
      "imgUrl": "assets/images/team/Rishabh_Verma.jpg",
    },
  ];

  var managementTeam = [
    {
      "name": "Ram Maheshwari",
      "linkedin": "",
      "github": " ",
      "imgUrl": "assets/images/team/ram_maheshwari.jpg",
    },
    {
      "name": "Jasprit Kaur",
      "linkedin": "https://www.linkedin.com/in/kaurjasprit/",
      "github": " ",
      "imgUrl": "assets/images/team/jasprit_kaur.jpg",
    },
    {
      "name": "Sriyash",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "assets/images/team/sriyash.jpg",
    },
    {
      "name": "Rahul Sarvadevabhatla",
      "linkedin":
          "https://www.linkedin.com/in/sarvadevabhatla-rahul-9419981a2/",
      "github": " ",
      "imgUrl": "assets/images/team/rahul_sarvadevabhatla.jpg",
    },
  ];
  var designTeam = [
    {
      "name": "Arnab Dutta Purkayastha",
      "linkedin": "",
      "github": " ",
      "imgUrl": "assets/images/team/arnab_dutta.jpg",
    },
    {
      "name": "Suryanshi Kaushik",
      "linkedin": "https://www.linkedin.com/in/suryanshi-kaushik-206433182/",
      "github": " ",
      "imgUrl": "assets/images/team/suryanshi_kaushik.jpg",
    },
    {
      "name": "Ritik Rajput",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "assets/images/team/ritik_rajput.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "TEAM",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        "2020",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.orange[900]),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 7.00,
                  width: 153.00,
                  decoration: BoxDecoration(
                    color: Color(0xffe46d39),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.00, 3.00),
                        color: Color(0xff000000).withOpacity(0.16),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5.00),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.topCenter,
                child: Text(
                  "Presenting The Team of 2020 - 2021",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 140,
                  alignment: Alignment.center,
                  child: Image(image: AssetImage('assets/images/team.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  "Board",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 170,
                margin: EdgeInsets.only(top: 20),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: boardMembers.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.16),
                                          offset: Offset(0.00, 3.00),
                                          blurRadius: 8,
                                          spreadRadius: 0)
                                    ],
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            boardMembers[index]["imgUrl"]))),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      boardMembers[index]["name"],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                              shape: new CircleBorder(),
                                              elevation: 10,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/linkedinblue.png'),
                                                width: 14.2,
                                                height: 14.2,
                                              ),
                                              onPressed: () async {
                                                await launch(boardMembers[index]
                                                    ["linkedin"]);
                                              },
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(left: 10)),
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                                shape: new CircleBorder(),
                                                elevation: 10,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/githubblack.png'),
                                                  width: 16,
                                                ),
                                                onPressed: () async {
                                                  await launch(
                                                      boardMembers[index]
                                                          ["github"]);
                                                })),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  "Technical Team",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 170,
                margin: EdgeInsets.only(top: 20),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: technicalTeam.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x29000000),
                                          offset: Offset(0, 0),
                                          blurRadius: 8,
                                          spreadRadius: 0)
                                    ],
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            technicalTeam[index]["imgUrl"]))),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      technicalTeam[index]["name"],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                                shape: new CircleBorder(),
                                                elevation: 10,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/linkedinblue.png'),
                                                  width: 14.2,
                                                  height: 14.2,
                                                ),
                                                onPressed: () async {
                                                  await launch(
                                                      technicalTeam[index]
                                                          ["linkedin"]);
                                                })),
                                        Padding(
                                            padding: EdgeInsets.only(left: 10)),
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                                shape: new CircleBorder(),
                                                elevation: 10,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/githubblack.png'),
                                                  width: 16,
                                                ),
                                                onPressed: () async {
                                                  await launch(
                                                      technicalTeam[index]
                                                          ["github"]);
                                                })),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  "Buisness Team",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 170,
                margin: EdgeInsets.only(top: 20),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: managementTeam.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.16),
                                          offset: Offset(0.00, 3.00),
                                          blurRadius: 8,
                                          spreadRadius: 0)
                                    ],
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            managementTeam[index]["imgUrl"]))),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      managementTeam[index]["name"],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                              shape: new CircleBorder(),
                                              elevation: 10,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/linkedinblue.png'),
                                                width: 14.2,
                                                height: 14.2,
                                              ),
                                              onPressed: () async {
                                                await launch(
                                                    managementTeam[index]
                                                        ["linkedin"]);
                                              },
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(left: 10)),
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                                shape: new CircleBorder(),
                                                elevation: 10,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/githubblack.png'),
                                                  width: 16,
                                                ),
                                                onPressed: () async {
                                                  await launch(
                                                      managementTeam[index]
                                                          ["github"]);
                                                })),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Creatives Team",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 170,
                margin: EdgeInsets.only(top: 20),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: designTeam.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xff000000)
                                              .withOpacity(0.16),
                                          offset: Offset(0.00, 3.00),
                                          blurRadius: 8,
                                          spreadRadius: 0)
                                    ],
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            designTeam[index]["imgUrl"]))),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      designTeam[index]["name"],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                              shape: new CircleBorder(),
                                              elevation: 10,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/linkedinblue.png'),
                                                width: 14.2,
                                                height: 14.2,
                                              ),
                                              onPressed: () async {
                                                await launch(designTeam[index]
                                                    ["linkedin"]);
                                              },
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(left: 10)),
                                        Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    offset: Offset(0.00, 3.00),
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.16),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: new RawMaterialButton(
                                                shape: new CircleBorder(),
                                                elevation: 10,
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/githubblack.png'),
                                                  width: 16,
                                                ),
                                                onPressed: () async {
                                                  await launch(designTeam[index]
                                                      ["github"]);
                                                })),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
