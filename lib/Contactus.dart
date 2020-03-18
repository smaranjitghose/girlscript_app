import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:noob_project/SocialIcons.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactuspage extends StatelessWidget {

  TextEditingController emailAddr = TextEditingController();
  TextEditingController body = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new Container(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/GSsoc-Type-Logo-Black.png'),
              ),
            ),
          ),
          new Container(height: 20),
          Text(
            "Have any Queries or Suggestions ?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
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
                                _scaffoldKey.currentState.showSnackBar(
                                  new SnackBar(duration: new Duration(seconds: 4), content:
                                  new Row(
                                    children: <Widget>[
                                      new CircularProgressIndicator(),
                                      new Text("Sending Email , Please Wait...")
                                    ],
                                  ),
                                  ));
                              sendmail()
                                  .whenComplete(() =>
                                  Navigator.of(context).pushNamed("/Home")
                              );
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
                                    fontWeight: FontWeight.bold),
                              ),
                              color: Colors.red,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ))),
            ),
          ),
          new Container(
            padding: EdgeInsets.all(5),
          ),
          Text(
            "Connect With Us !!",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FloatingActionButton(
                heroTag: "fb",
                onPressed: () {
                  _launchURL("https://www.facebook.com/Girlscript/");
                },
                child: Icon(
                  SocialIcons.facebook_squared,
                  size: 40,
                ),
              ),
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
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                heroTag: "insta",
                onPressed: () {
                  _launchURL("https://www.instagram.com/girlscript/");
                },
                backgroundColor: Colors.pink,
                child: Icon(
                  SocialIcons.instagram,
                  size: 40,
                ),
              ),
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
          Padding(
            padding: EdgeInsets.all(20),
          ),
        ],
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

  Future<void> sendmail() async{
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
