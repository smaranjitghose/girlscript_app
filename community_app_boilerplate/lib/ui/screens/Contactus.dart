import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:noob_project/models/SocialIcons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  
  final emailAddr = TextEditingController();
  final body = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      key: _scaffoldKey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            new Container(height: 20),
            Text(
              "Have any Queries or Suggestions ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.black, 
                  fontSize: 25,
                  fontFamily: "Poppins",
                ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                elevation: 10,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10),
                ),
                //color: Colors.green,
                child: Container(
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue[500],
                          Colors.blue[900],
                        ],
                      ),
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Center(
                        child: new Container(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: emailAddr,
                                  decoration: InputDecoration(
                                    hintText: "Enter your Email Address",
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: body,
                                  decoration: InputDecoration(
                                    hintText: "Enter your Text",
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  maxLines: 8,
                                ),
                              ),
                              new Container(
                                child: RaisedButton(
                                  onPressed: () {
                                    _scaffoldKey.currentState
                                        .showSnackBar(new SnackBar(
                                      duration: new Duration(seconds: 4),
                                      content: new Row(
                                        children: <Widget>[
                                          new CircularProgressIndicator(),
                                          new Text(
                                              "Sending Email , Please Wait...")
                                        ],
                                      ),
                                    ));
                                    sendmail().whenComplete(() =>
                                        Navigator.of(context).pushNamed("/Home"));
                                  },
                                  elevation: 4,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 4,
                                    horizontal: 30,
                                  ),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Send Mail",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))),
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                  )
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                  fontFamily: "Poppins"
                ),
              ),
              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                  )
                ),
              ),
            ]),
            SizedBox(
              height: 200.0,
              child: Stack(
                children: <Widget>[
                  Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130.0,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                    elevation: 3.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                          colors:[Color(0xff5f2c82), Color(0xff49a09d)]
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:30.0),
                        child: Text(
                          "Connect With Us !!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold, 
                            fontSize: 25,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top:95.0,
                  left: 38.0,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: "fb",
                        onPressed: () {
                          _launchURL("https://www.facebook.com/Girlscript/");
                        },
                        child: Image.asset(
                          'assets/icons/social/fb.png',
                        ),
                      ),
                      SizedBox(width:35.0),
                      FloatingActionButton(
                        heroTag: "li",
                        onPressed: () {
                          _launchURL(
                              "https://www.linkedin.com/company/girlscript-foundation/?originalSubdomain=in");
                        },
                        backgroundColor: Colors.blue[700],
                        child: Icon(
                          SocialIcons.linkedin_squared,
                          size: 40,
                        ),
                      ),
                      SizedBox(width:35.0),
                      FloatingActionButton(
                        heroTag: "twi",
                        onPressed: () {
                          _launchURL("https://twitter.com/girlscript1");
                        },
                        child: Icon(
                          SocialIcons.twitter,
                          size: 40,
                        ),
                      ),
                      // FloatingActionButton(
                      //   heroTag: "insta",
                      //   onPressed: () {
                      //     _launchURL("https://www.instagram.com/girlscript/");
                      //   },
                      //   backgroundColor: Colors.pink,
                      //   child: Icon(
                      //     SocialIcons.instagram,
                      //     size: 40,
                      //   ),
                      // ),
                      SizedBox(width:35.0),
                      FloatingActionButton(
                        heroTag: "git",
                        onPressed: () {
                          _launchURL(
                              "https://github.com/smaranjitghose/girlscript_app");
                        },
                        backgroundColor: Colors.white,
                        child: Icon(
                          SocialIcons.github_circled,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String Url) async {
    var url = Url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> sendmail() async {
    final Email email = Email(
      body: body.text,
      subject: 'Query , suggestions',
      recipients: ['aswingopinathan1871@gmail.com'],
      cc: ['aswingopinathan19@gmail.com'],
      //bcc: ['bcc@example.com'],
      //attachmentPath: '/path/to/attachment.zip',
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
}
