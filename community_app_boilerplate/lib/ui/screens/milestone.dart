import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Milestone extends StatefulWidget {
  final String name;
  Milestone(this.name);
  @override
  _MilestoneState createState() => _MilestoneState();
}

class _MilestoneState extends State<Milestone> {

  String name="User Name";

  @override
  void initState() {
    name=widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: width * 0.13,
            ),
            Text(
              'MILESTONE',
              style:TextStyle(
                fontSize: 30.0, 
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5
              ),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Container(
              width: width * 0.37,
              height: width * 0.023,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                color: Colors.amber[800],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
            ),
            // SizedBox(height:MediaQuery.of(context).size.width * 0.04),
            SvgPicture.asset(
              'assets/images/custom.svg',
              height: 200.0,
            ),
            Card(
              color: Colors.white,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side:
                  BorderSide(color: Colors.white, width: 0.0)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Card(color: Colors.grey[300],
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            margin: EdgeInsets.all(1),
                            child: Image(
                                image: AssetImage('assets/images/html.png'),
                            height: 70,
                            width: 60,),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Won Hackathalon',
                                style: TextStyle(
                                    fontSize: 17.0, fontWeight: FontWeight.w700),
                              ), 
                              Text(
                                'By User',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 13.0),
                              ),
                              Text(
                                'dsadsadaasdads',style: TextStyle(
                                color: Colors.amber[800],
                                fontWeight: FontWeight.w400, fontSize: 13.0
                              ),
                              )

                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}