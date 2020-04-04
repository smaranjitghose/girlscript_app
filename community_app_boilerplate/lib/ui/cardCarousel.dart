import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardCaursel extends StatefulWidget {

  @override
  _CardCaurselState createState() => _CardCaurselState();
}

class _CardCaurselState extends State<CardCaursel> {

  List imgList = [
    "https://scontent.fdel36-1.fna.fbcdn.net/v/t1.0-9/s960x960/61671001_2363747760562667_6905392656948396032_o.png?_nc_cat=103&_nc_sid=dd9801&_nc_ohc=_6DB0oZs4JcAX-GKnHL&_nc_ht=scontent.fdel36-1.fna&oh=9a88256be7356869dee686830dbf33b8&oe=5EABDA42",
    "https://scontent.fdel36-1.fna.fbcdn.net/v/t1.0-0/c0.27.200.200a/p200x200/70919369_2455899708014138_8079858804138704896_o.png?_nc_cat=107&_nc_sid=730e14&_nc_ohc=Iq62qML9YJcAX-3sprr&_nc_ht=scontent.fdel36-1.fna&oh=9f92e9d959d1112af5cfd56cd9497c63&oe=5EAE7FA8",
    "https://scontent.fdel36-1.fna.fbcdn.net/v/t1.0-9/s960x960/69462541_2435781923359250_1328850395912470528_o.jpg?_nc_cat=101&_nc_sid=110474&_nc_ohc=F2svGpm2FLsAX-Odaw3&_nc_ht=scontent.fdel36-1.fna&_nc_tp=7&oh=ac696132fe1aacc0b7c20cec72634b81&oe=5EAD2C87",
    "https://scontent.fdel36-1.fna.fbcdn.net/v/t1.0-9/p960x960/64578315_2382495672021209_3551887651135029248_o.jpg?_nc_cat=109&_nc_sid=2d5d41&_nc_ohc=Z_7_r4dkT3YAX-TmVoT&_nc_ht=scontent.fdel36-1.fna&_nc_tp=6&oh=7b32197ad539a7f687643e4fdf521995&oe=5EAE7EC9",
  ];

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
    return
      Stack(
      children: <Widget>[
//        CarouselSlider(
////          height: 168.0,
//          height: MediaQuery.of(context).size.height*0.25,
//          autoPlay: true,
//          autoPlayInterval: Duration(seconds: 3),
//          autoPlayAnimationDuration: Duration(milliseconds: 800),
//          autoPlayCurve: Curves.fastOutSlowIn,
//          pauseAutoPlayOnTouch: Duration(seconds: 10),
//          aspectRatio: 2.0,
//          onPageChanged: (index) {
//            setState(() {
//              _currentIndex = index;
//            });
//          },
//          items: cardList.map((card){
//            return Builder(
//              builder:(BuildContext context){
//                return Container(
//                  width: MediaQuery.of(context).size.width,
//                  // width: 320.0,
//                  child: Card(
//                    elevation: 5.0,
//                    color: Colors.deepPurple[200],
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(15.0))
//                    ),
//                    child: Padding(
//                      padding: const EdgeInsets.all(12.0),
//                      child: card,
//                    )
//                  )
//                );
//              }
//            );
//          }).toList(),
//        ),


        Container(
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
                    margin: EdgeInsets.symmetric(
                        horizontal: 3.0),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(imgUrl)
                        )
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),

//        Positioned(
//          top: MediaQuery.of(context).size.height*0.17,
//          left: MediaQuery.of(context).size.width*0.430,
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: map<Widget>(cardList, (index, url) {
//              return Container(
//                width: 10.0,
//                height: 10.0,
//                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                decoration: BoxDecoration(
//                  shape: BoxShape.circle,
//                  color: _currentIndex == index ? Colors.black : Colors.white,
//                  border: Border.all(
//                    color: Colors.black,
//                    width: 0.5
//                  )
//                ),
//              );
//            }),
//          ),
//        ),
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