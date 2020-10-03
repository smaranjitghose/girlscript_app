import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../custom/introScreenModel.dart';
import 'auth/login.dart';

const List<Widget> introScreens = [
  IntroScreenModel(
    description:
        "Looking for a perfect team to work with? GirlScript's diverse and strong network can help you.",
    image: "teams.jpg",
  ),
  IntroScreenModel(
    description: "Get updates of upcoming events from GirlScript!",
    image: "events.jpg",
  ),
  IntroScreenModel(
    description: "Get ready to learn and grow your knowledge base",
    image: "learn.jpg",
  ),
];

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _pageController;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      if (_currentPage != _pageController.page.round()) {
        setState(() {
          _currentPage = _pageController.page.round();
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              top: 40,
              bottom: 49,
              child: SizedBox(
                height: 200,
                child: PageView(
                  pageSnapping: true,
                  controller: _pageController,
                  children: introScreens,
                ),
              ),
            ),
            _appBar(),
            bottomNavigation(context)
          ],
        ),
      ),
    );
  }

  Align bottomNavigation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 15.0),
          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: const Color(0xFFE46D39),
              expansionFactor: 1.7,
              dotHeight: 12.0,
              dotWidth: 12.0,
            ),
          ),
          Spacer(),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: _currentPage != 2
                ? SizedBox(
                    width: 90,
                    height: 49,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  )
                : InkWell(
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFE46D39),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)),
                      ),
                      width: 90,
                      height: 49,
                      child: Center(
                        child: Text(
                          "START",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }

  Align _appBar() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            Image.asset(
              "assets/images/Logo1.png",
              width: 100,
              height: 40,
            ),
            Spacer(),
            if (_currentPage != introScreens.length - 1)
              SizedBox(
                height: 40,
                child: TextButton(
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                      color: const Color(0xFFE46D39),
                    ),
                  ),
                  onPressed: () => _pageController.animateToPage(
                    introScreens.length - 1,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
