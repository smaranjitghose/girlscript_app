import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardCaursel extends StatefulWidget {

  @override
  _CardCaurselState createState() => _CardCaurselState();
}

class _CardCaurselState extends State<CardCaursel> {
  int _currentIndex=0;
  int index=0;
  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          height: 168.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: Duration(seconds: 10),
          aspectRatio: 2.0,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: cardList.map((card){
            return Builder(
              builder:(BuildContext context){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  // width: 320.0,
                  child: Card(
                    elevation: 5.0,
                    color: Colors.deepPurple[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: card,
                    )
                  )
                );
              }
            );
          }).toList(),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*0.17,
          left: MediaQuery.of(context).size.width*0.430,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.black : Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5
                  )
                ),
              );
            }),
          ),
        ),
      ], 
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "gfjvvvjvjvjvvjm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          "jyfkuyfifffk",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w600
          )
        ),
      ],
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "gfjvvvjvjvjvvjm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          "jyfkuyfifffk",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w600
          )
        ),
      ],
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "gfjvvvjvjvjvvjm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          "jyfkuyfifffk",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w600
          )
        ),
      ],
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "gfjvvvjvjvjvvjm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          "jyfkuyfifffk",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w600
          )
        ),
      ],
    );
  }
}