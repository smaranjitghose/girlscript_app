import 'package:communityappboilerplate/services/collection.dart';
import 'package:communityappboilerplate/services/user.dart';
import 'package:communityappboilerplate/ui/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:communityappboilerplate/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class Profile extends StatefulWidget {

  final String userId;
  Profile(this.userId);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String name='USERNAME';
  String imageUrl;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: userRef.document(widget.userId).get(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        } else{
          User user= User.fromDoc(snapshot.data);
          return SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.13,
                    ),
                    Text(
                      'PROFILE',
                      style:
                        TextStyle(
                          fontSize: 25.0, 
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5
                        ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.01,),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.02,
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: MediaQuery.of(context).size.height*0.16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 3.0),
                            blurRadius: 6.0,
                            color: Colors.grey
                          )
                        ],
                        image: DecorationImage(
                          image: NetworkImage(user.profileImageUrl),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
                    Text(
                      user.name,
                      style: TextStyle(
                        fontSize: 18.0
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.13,
                          child: Card(
                            elevation: 5.0,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'POINTS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Text(
                                  '323',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: MediaQuery.of(context).size.height*0.13,
                          child: Card(
                            elevation: 5.0,
                            color: Color(0xffE16831),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'PROJECTS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                Text(
                                  '323',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.025,
                      color: Colors.grey[200],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.business_center,
                                size: 30.0,
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                              Text(
                                'Events Attended',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.bookmark_border,
                                size: 30.0,
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                              Text(
                                'Contributions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.person_outline,
                                size: 30.0,
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                              Text(
                                'Personel Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
                    Container(
                      height:  MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        onPressed:() async {
                          signOutGoogle();
                          await _auth.signOut(); 
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginScreen();}), ModalRoute.withName('/'));
                        },
                        color: Colors.black,
                        child: Text(
                          'Sign Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ), 
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                    RichText(
                      text: TextSpan(
                        text: 'MADE WITH ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: 'Montserrat'
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '❤ '
                          ),
                          TextSpan(
                            text: 'BY GSSOC TEAM'
                          )
                        ]
                      )
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}