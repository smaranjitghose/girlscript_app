import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=>  _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>print("Splash done"));
  }



  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration:BoxDecoration (color: Colors.orange[400]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:AssetImage('assets/gs.png') ,
                        backgroundColor: Colors.white,
                        radius: 70.0,

                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "GIRLSCRIPT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),

                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding:EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                        "Code For Freedom",
                        style: TextStyle(color: Colors.white,
                            fontSize: 18.0,fontWeight: FontWeight.bold
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: RaisedButton(
                        //onPressed: (){
                        //Navigator.push(
                        //context,
                        // MaterialPageRoute(builder: (context) => home()),
                        //);
                        //},
                        child:Text("GO"),
                        highlightColor:Colors.grey[500],
                      ),
                    ),
                  ],

                ),
              )
            ],
          )

        ],
      ),

    );
  }
}