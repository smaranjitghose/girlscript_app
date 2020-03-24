import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Developers extends StatefulWidget {
  final String name;
  final String gurl;
  final String furl;
  final String iurl;
  Developers({
    this.name,
    this.gurl,
    this.furl,
    this.iurl
  });

  @override
  _DevelopersState createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.825,
            height: MediaQuery.of(context).size.width*0.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
              ),
              margin: const EdgeInsets.only(top: 50.0),
              color: Colors.deepOrange,
              child: SizedBox(
                height: 150.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${widget.name}",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () async{
                                // url='${widget.url}';
                                if(await canLaunch('${widget.gurl}')){
                                  await launch('${widget.gurl}');
                                } else{
                                  throw 'Couldn\'t launch the url';
                                }
                              },
                              child: Image.asset(
                                'assets/icons/social/GitHub_Mark.png',
                                height: 26.0,
                                width: 26.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async{
                                // const url='https://www.gssoc.tech/';
                                if(await canLaunch('${widget.furl}')){
                                  await launch('${widget.furl}');
                                } else{
                                  throw 'Couldn\'t launch the url';
                                }
                              },
                              child: Image.asset(
                                'assets/icons/social/facebook.png',
                                height: 32.0,
                                width: 32.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async{
                                // const url='https://www.gssoc.tech/';
                                if(await canLaunch('${widget.iurl}')){
                                  await launch('${widget.iurl}');
                                } else{
                                  throw 'Couldn\'t launch the url';
                                }
                              },
                              child: Image.asset(
                                'assets/icons/social/instagram.png',
                                height: 28.0,
                                width: 28.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),
            ),
          ),
          Positioned(
            top: .0,
            left: .0,
            right: .0,
            child: Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xffe32879),
                backgroundImage: AssetImage(
                  'assets/icons/user_placeholder.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}