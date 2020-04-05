import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardCaursel extends StatefulWidget {

  @override
  _CardCaurselState createState() => _CardCaurselState();
}

class _CardCaurselState extends State<CardCaursel> {

  List imgList = [
    AssetImage('assets/images/announcement1.jpg'),
    AssetImage('assets/images/announcement2.jpg'),
    AssetImage('assets/images/flutter1.png'),
    AssetImage('assets/images/announcement1.jpg'),
  ];

  int index=0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children: <Widget>[
        Container(
          height: 180.0,
          width: MediaQuery.of(context).size.width ,
          child: CarouselSlider(
            viewportFraction: 0.9,
            initialPage: 0,
            autoPlay: true,
            enlargeCenterPage: true,
            height: MediaQuery.of(context).size.height * 0.22,
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(0.0, 3.0), //(x,y)
                          blurRadius: 8.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: imgUrl
                      )
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ], 
    );
  }
}