import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamsScreen extends StatefulWidget {
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamsScreen> {
  var boardMembers = [
    {
      "imgUrl": 'https://user-images.githubusercontent.com/74055102/106128135-27ba5680-6185-11eb-8250-f89760dab939.jpg',
      "name": "Smaranjit Ghose",
      "linkedin": "https://www.linkedin.com/in/smaranjitghose/",
      "github": "https://github.com/smaranjitghose",
    },
    {
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106128371-59cbb880-6185-11eb-8144-711cd19bf679.jpg",
      "name": "Anush Bhatia",
      "linkedin": "https://www.linkedin.com/in/anush-bhatia-aa500a158/",
      "github": "https://github.com/anushbhatia",
    },
    {
      "imgUrl": 'https://user-images.githubusercontent.com/74055102/106128499-736d0000-6185-11eb-8720-26d59ba1ff6c.jpg',
      "name": 'Saswat Nayak',
      "linkedin": 'https://www.linkedin.com/in/saswat-nayak-a41212166/',
      "github": 'https://github.com/swat1998',
    },
    {
      "imgUrl": 'https://user-images.githubusercontent.com/74055102/106128605-87b0fd00-6185-11eb-8c68-897e6bd547e0.jpg',
      "name": 'Ousnik Polley',
      "linkedIi": 'https://www.linkedin.com/in/ousnikpolley/',
      "github": 'https://github.com/ousnik',
    },
    {
      "imgUrl": 'https://user-images.githubusercontent.com/74055102/106128716-9e575400-6185-11eb-8a1b-831ea0a09135.jpg',
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
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106131610-e9bf3180-6188-11eb-8e6b-cd254b847d14.jpg",
    },
    {
      "name": "Bidisha Mukherjee",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106131700-05c2d300-6189-11eb-84f3-332a5d558c7c.jpg",
    },
    {
      "name": "Ambarish Dattar",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106131775-1d9a5700-6189-11eb-88ee-d4c9c15e7047.jpg",
    },
    {
      "name": "Apoorva Gupta",
      "linkedin": "https://www.linkedin.com/in/apoorvagupta30/",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106131877-399df880-6189-11eb-8ede-6999b61a7006.jpg",
    },
    {
      "name": "Rishabh Verma",
      "linkedin": "",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106131929-4a4e6e80-6189-11eb-84da-2c6a88d445ef.jpg",
    },
  ];

  var managementTeam = [
    {
      "name": "Ram Maheshwari",
      "linkedin": "",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106132609-2b9ca780-618a-11eb-94b0-b862c7db5724.jpg",
    },
    {
      "name": "Jasprit Kaur",
      "linkedin": "https://www.linkedin.com/in/kaurjasprit/",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106132741-57b82880-618a-11eb-8ce7-d1c153dddf7d.jpg",
    },
    {
      "name": "Sriyash",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106132666-3a835a00-618a-11eb-8ff4-3a89e4a70d69.jpg",
    },
    {
      "name": "Rahul Sarvadevabhatla",
      "linkedin":
          "https://www.linkedin.com/in/sarvadevabhatla-rahul-9419981a2/",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106132785-656dae00-618a-11eb-886e-ee6fdb49cb26.jpg",
    },
  ];
  var designTeam = [
    {
      "name": "Arnab Dutta Purkayastha",
      "linkedin": "",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106129501-4ec55800-6186-11eb-93b5-489f513b3b4d.jpg",
    },
    {
      "name": "Suryanshi Kaushik",
      "linkedin": "https://www.linkedin.com/in/suryanshi-kaushik-206433182/",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106129574-60a6fb00-6186-11eb-85db-b9a4574a66cc.jpg",
    },
    {
      "name": "Ritik Rajput",
      "linkedin": " ",
      "github": " ",
      "imgUrl": "https://user-images.githubusercontent.com/74055102/106129911-b7acd000-6186-11eb-9420-a0ffc33b2db4.jpg",
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
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
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
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: CachedNetworkImage(
                                      imageUrl: boardMembers[index]["imgUrl"],
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          boardMembers[index]["name"],
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(top: 5)),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                                                        boardMembers[index]
                                                        ["linkedin"]);
                                                  },
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10)),
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: CachedNetworkImage(
                                      imageUrl: technicalTeam[index]["imgUrl"],
                                      imageBuilder: (context, imageProvider) => Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: imageProvider, fit: BoxFit.cover),
                                        ),
                                      ),
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          technicalTeam[index]["name"],
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(top: 5)),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                                                padding: EdgeInsets.only(
                                                    left: 10)),
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                      "Business Team",
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
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: CachedNetworkImage(
                                      imageUrl: managementTeam[index]["imgUrl"],
                                      imageBuilder: (context, imageProvider) => Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: imageProvider, fit: BoxFit.cover),
                                        ),
                                      ),
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          managementTeam[index]["name"],
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(top: 5)),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                                                padding: EdgeInsets.only(
                                                    left: 10)),
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: CachedNetworkImage(
                                      imageUrl: designTeam[index]["imgUrl"],
                                      imageBuilder: (context, imageProvider) => Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: imageProvider, fit: BoxFit.cover),
                                        ),
                                      ),
                                      placeholder: (context, url) => CircularProgressIndicator(),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          designTeam[index]["name"],
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(top: 5)),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                                                        designTeam[index]
                                                        ["linkedin"]);
                                                  },
                                                )),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10)),
                                            Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                    boxShadow: <BoxShadow>[
                                                      BoxShadow(
                                                        offset: Offset(
                                                            0.00, 3.00),
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
                                                          designTeam[index]
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
