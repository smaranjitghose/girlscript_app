import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contributors extends StatefulWidget {
  final String name;
  final String gurl;
  Contributors({this.name, this.gurl});

  @override
  _ContributorsState createState() => _ContributorsState();
}

class _ContributorsState extends State<Contributors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.825,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Card(
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          color: Colors.deepOrange,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 12.0, bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("${widget.name}",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                    )),
                GestureDetector(
                  onTap: () async {
                    // const url='https://www.gssoc.tech/';
                    if (await canLaunch('${widget.gurl}')) {
                      await launch('${widget.gurl}');
                    } else {
                      throw 'Couldn\'t launch the url';
                    }
                  },
                  child: Image.asset(
                    'assets/icons/social/GitHub_Mark.png',
                    height: 32.0,
                    width: 32.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
