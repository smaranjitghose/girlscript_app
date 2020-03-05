import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:noob_project/SocialIcons.dart';

class Projectpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4a4a),
        title: Text('Projects', style: TextStyle(fontSize: 28, fontFamily: 'Playball')),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          if(index % 2 == 0) {
            return _buildCarousel(context, index ~/ 2);
          }
          else {
            return Divider();
          }
        },
      ),
    );
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Scrollable Card $carouselIndex'),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 300.0,
          child: PageView.builder(
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Card(
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Center(
          child: Icon(SocialIcons.github_circled),
        ),
      ),
      ),
    );
  }
}