import 'package:communityappboilerplate/ui/cardCarousel.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.black,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height:MediaQuery.of(context).size.width*0.15,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.width*0.12,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical:5.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0.0),
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0.0),
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.mic,
                              color: Colors.grey,
                            ),
                            onPressed: (){},
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200]
                      ),
                      onSubmitted: (input){},
                    ),
                  ),
                  SizedBox(height:MediaQuery.of(context).size.width*0.0355),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            textAlign: TextAlign.start,
                            text:TextSpan(
                              text: 'Hi, ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'User!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700
                                  )
                                )
                              ]
                            ),
                          ),
//                          SizedBox(height:3.0),
//                          SizedBox(height:MediaQuery.of(context).size.width*0.01,),
                          Text(
                            'Explore the app',
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
//                  SizedBox(height:15.0),
                  SizedBox(height:MediaQuery.of(context).size.width*0.04,),

                ],
              ),
            ),
            CardCaursel(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: <Widget>[
//                  SizedBox(height:22.0),
                  SizedBox(height:MediaQuery.of(context).size.width*0.05,),
                  Text(
                    'ANNOUNCEMENT',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(height:MediaQuery.of(context).size.width*0.01,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.37,
                    height: MediaQuery.of(context).size.width*0.025,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      color: Colors.amber[800],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.5), //(x,y)
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                  ),
//                  SizedBox(height:17.0),
                  SizedBox(height:MediaQuery.of(context).size.width*0.05,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 8.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Color(0xffFFF1F1),
                      // elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color:Color(0xffFFF1F1),width: 0.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:15.0,bottom: 15.0,left: 20.0,right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'GSSOC 2020',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height:15.0),
                            Text(
                              'wohwohgwohbaoinaowhgw',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0
                              ),
                            ),
//                            SizedBox(height:15.0),
                            SizedBox(height:MediaQuery.of(context).size.width*0.0455,),
                            Container(
//                              height: 36,
                              height: MediaQuery.of(context).size.width*0.07,
                              child: RaisedButton(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)
                                ),
                                color: Colors.white,
                                onPressed:(){},
                                child: Text(
                                  'READ MORE',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ), 
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:MediaQuery.of(context).size.width*0.0455),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 8.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
//                    height: 130,
                    height: MediaQuery.of(context).size.width*0.360,
                    child: Card(
                      color: Color(0xffF3F1FF),
                      // elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color:Color(0xffF3F1FF),width: 0.0)
                      ),
                    ),
                  ),
//                  SizedBox(height:30.0),
                  SizedBox(height:MediaQuery.of(context).size.width*0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}