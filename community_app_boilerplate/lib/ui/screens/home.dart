import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noob_project/ui/custom/cardCaursel.dart';
import 'package:noob_project/ui/custom/profileCard.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height:90.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "Hi ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "UserName",
                          style: TextStyle(
                            color: Colors.amber[800]
                          )
                        )
                      ]
                    )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 20.0),
                child: Text(
                  "Let's Code For Freedom",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]
                  ),
                ),
              ),
              CardCaursel(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Profile(),
              )
            ],
          ),
        ),
      ),
    );
  }
}