import 'package:flutter/material.dart';

class TeamsScreen extends StatefulWidget {
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamsScreen> {

  var boardMembers = [
    {
      "imgUrl": "https://avatars0.githubusercontent.com/u/46641503?s=460&u=f983dc0dfa8fb9bde0af7e2f8015c43533b275fa&v=4",
      "name": "Smaranjit Ghose",
      "title": "Tech Evangelist"

    },
    {
      "imgUrl": "https://dscvit.com/images/board19/samarth.jpg",
      "name": "Samarth Nayyar",
      "title": "Community Lead"
    },
    {
      "imgUrl": "https://dscvit.com/images/board19/ayush.jpg",
      "name": "Ayush Priya",
      "title": "Technical Lead"
    },
{
      "imgUrl": "https://dscvit.com/images/board19/samyak.jpg",
      "name": "Samyank Jain",
      "title": "Technical Lead"
    },
    {
      "imgUrl": "https://dscvit.com/images/board19/aritro.jpg",
      "name": "Aritro Paul",
      "title": "Assoc. Design Lead"
    },

      {
        "imgUrl": "https://dscvit.com/images/board19/dhiraj.jpg",
      "name": "Dheeraj Jain",
      "title": "Technical Advisor"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/jayakrishna.jpg",
      "name": "Jayakrishna Gupta",
      "title": "Managemnet Lead"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/abhishek.jpg",
      "name": "Abhishek Kaushik",
      "title": "Android Lead"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/raina.jpg",
      "name": "Raina Garg",
      "title": "WTM Lead"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/apurva.jpg",
      "name": "Apurva Nitanjanjay",
      "title": "Project Lead"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/akshay.jpg",
      "name": "Akshay Raghvan",
      "title": "Operation Lead"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/preethi.jpg",
      "name": "Preeti G",
      "title": "PR Lead"
    },
    {
        "imgUrl": "https://dscvit.com/images/board19/amrut.jpg",
      "name": "Amrut Pdhake",
      "title": "Projects Lead"
    },
    
  ];

  var technicalTeam=[
    {
      "imgUrl": "https://dscvit.com/images/techteam/yaswant.jpg",
      "name": "Yaswant Narayan",
      "title": "Android"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/paritosh.jpg",
      "name": "Paritosh Mahajan",
      "title": "ML"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/vikrame.jpg",
      "name": "Vikrame Vasudev",
      "title": "Web"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/angad.jpg",
      "name": "Angad Sharma",
      "title": "Backend"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/ubaid.jpg",
      "name": "Ubaid Usmani",
      "title": "ML"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/prateek.jpg",
      "name": "Prateek Mewara",
      "title": "Android"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/satkriti.jpg",
      "name": "Satkriti Singh",
      "title": "Android"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/amogh.jpg",
      "name": "Amogh Lele",
      "title": "Android"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/nikhil.jpg",
      "name": "Nikhil Singh",
      "title": "Web"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/purushottam.jpg",
      "name": "Purushottam Sharma",
      "title": "Web"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/ananya.jpg",
      "name": "Ananya Ganesh",
      "title": "Web"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/riddhi.jpg",
      "name": "Riddhi Gupta",
      "title": "Backend"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/abhishek.jpg",
      "name": "Abhishek Kushwaha",
      "title": "Backend"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/vishaal.jpg",
      "name": "Vishaal Selvaraj",
      "title": "Algorithm"
    },
    {
      "imgUrl": "https://dscvit.com/images/techteam/deepak.jpg",
      "name": "Deepak Malpani",
      "title": "ML"
    },
  ];

  var managementTeam =[
    {
      "imgUrl": "https://dscvit.com/images/managers/meherdeep.jpg",
      "name": "Meherdeep Thakur",
      "title": "Manger"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/hardik.jpg",
      "name": "Hardik Kataria",
      "title": "Manger"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/deepak.jpg",
      "name": "Deepak Nahar",
      "title": "Content"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/sanchi.jpg",
      "name": "Sanchi Chopra",
      "title": "Content"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/dhruv.jpg",
      "name": "Dhruv Mittal",
      "title": "Manager"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/vivek.jpg",
      "name": "Vivek Shetty",
      "title": "Manger"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/akshat.jpg",
      "name": "Akshat Gupta",
      "title": "Manger"
    },
  
    {
      "imgUrl": " https://dscvit.com/images/managers/shubham.jpg",
      "name": "Shubham Srivastav",
      "title": "Manger"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/muskan.jpg",
      "name": "Muskan Rastogi",
      "title": "Manager"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/kritika.jpg",
      "name": "Kritika Sharma",
      "title": "Manager"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/naynika.jpg",
      "name": "Naynika Wason",
      "title": "Content"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/shreya.jpg",
      "name": "Shreya Maheshwari",
      "title": "Content"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/saloni.jpg",
      "name": "Saloni Parekh",
      "title": "Content"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/manorama.jpg",
      "name": "Manorama Maharana",
      "title": "Manager"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/arjun.jpg",
      "name": "Arjun Bhanot",
      "title": "Manager"
    },
    {
      "imgUrl": "https://dscvit.com/images/managers/cyril.jpg",
      "name": "Cyril Peter",
      "title": "Manager"
    },
  ];
  var designTeam=[
  {
      "imgUrl": "https://dscvit.com/images/designers/ekaansh.jpg",
      "name": "Ekaansh Arora",
      "title": "UI/UX"
    },
    {
      "imgUrl": "https://dscvit.com/images/designers/riya.jpg",
      "name": "Riya Kanabar",
      "title": "Graphic"
    },
    {
      "imgUrl": "https://dscvit.com/images/designers/ruchica.jpg",
      "name": "Ruchika Sinha",
      "title": "Graphic"
    },
    {
      "imgUrl": "https://dscvit.com/images/designers/aditya.jpg",
      "name": "Aditya Rathore",
      "title": "3 D & Motion"
    },
    {
      "imgUrl": "https://dscvit.com/images/designers/shravani.jpg",
      "name": "Shravani Shete",
      "title": "Graphic"
    },
    {
      "imgUrl": "https://dscvit.com/images/designers/ronish.jpg",
      "name": "Ronish Sawal",
      "title": "Graphic"
    },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(
              top: 20
            ),
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
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 5
                        ),
                        child: Text(
                          "2020",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.orange[900]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 2.5
                  ),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Presenting the board of 2020 - 2021",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 20
                    ),
                    width: 250,
                    alignment: Alignment.center,
                    child: Image.network("https://girlscript.github.io/summit18/images/header/logo.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Board",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: boardMembers.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15
                      ),
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
                                  offset: Offset(0,0),
                                  blurRadius: 8,
                                  spreadRadius: 0
                                )
                              ],
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                  boardMembers[index]["imgUrl"],
                                )
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10
                            ),
                            child: Text(
                              boardMembers[index]["name"],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5
                            ),
                            child: Text(
                              boardMembers[index]["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w800
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Technical Team",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: technicalTeam.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15
                      ),
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
                                  offset: Offset(0,0),
                                  blurRadius: 8,
                                  spreadRadius: 0
                                )
                              ],
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                  technicalTeam[index]["imgUrl"],
                                )
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10
                            ),
                            child: Text(
                              technicalTeam[index]["name"],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5
                            ),
                            child: Text(
                              technicalTeam[index]["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w800
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Management Team",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: managementTeam.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15
                      ),
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
                                  offset: Offset(0,0),
                                  blurRadius: 8,
                                  spreadRadius: 0
                                )
                              ],
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                  managementTeam[index]["imgUrl"],
                                )
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10
                            ),
                            child: Text(
                              managementTeam[index]["name"],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5
                            ),
                            child: Text(
                              managementTeam[index]["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w800
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Design Team",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(
                    top: 20, 
                    bottom: 20
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: designTeam.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15
                      ),
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
                                  offset: Offset(0,0),
                                  blurRadius: 8,
                                  spreadRadius: 0
                                )
                              ],
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                  designTeam[index]["imgUrl"],
                                )
                              )
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10
                            ),
                            child: Text(
                              designTeam[index]["name"],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 5
                            ),
                            child: Text(
                              designTeam[index]["title"],
                              style: TextStyle(
                                fontWeight: FontWeight.w800
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}