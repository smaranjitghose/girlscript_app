import 'package:flutter/material.dart';

class IntroScreenModel extends StatelessWidget {
  const IntroScreenModel({
    Key key,
    @required this.image,
    @required this.description,
  }) : super(key: key);
  final String image, description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/intro_screen/$image",
            height: 200,
          ),
          const SizedBox(height: 50),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}
