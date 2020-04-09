import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'events/event1.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  TextEditingController _searchController = TextEditingController();
  int _counter = 0;
  bool _hasSpeech = false;
  bool _stressTest = false;
  double level = 0.0;
  int _stressLoops = 0;
  String lastWords = "";
  String lastError = "";
  String lastStatus = "";
  String _currentLocaleId = "";
  List<LocaleName> _localeNames = [];
  final SpeechToText speech = SpeechToText();

  @override
  void initState() {
    super.initState();
  }

  Future<void> initSpeechState() async {
    bool hasSpeech = await speech.initialize(
        onError: errorListener, onStatus: statusListener);
    if (hasSpeech) {
      _localeNames = await speech.locales();

      var systemLocale = await speech.systemLocale();
      _currentLocaleId = systemLocale.localeId;
    }

    if (!mounted) return;

    setState(() {
      _hasSpeech = hasSpeech;
    });

    if (!(!_hasSpeech || speech.isListening))
      startListening();
    else
      null;
  }

  _incrementCounter() {
    setState(() {
      _counter = 0;
      _counter++;
    });
    print(_counter);

    if (_counter == 1) {
      if (!_hasSpeech) {
        initSpeechState();
      } else
        null;

      setState(() {
        _counter++;
      });
      print(_counter);
    }

    if (_counter == 2) {
      if (speech.isListening)
        stopListening();
      else
        null;

      setState(() {
        _counter = 0;
      });
      print(_counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.13,
              ),
              Text(
                'EVENTS',
                style:
                  TextStyle(
                    fontSize: 30.0, 
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.5
                  ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.37,
                height: MediaQuery.of(context).size.width * 0.023,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  color: Colors.amber[800],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 3), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.width * 0.04),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.12,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0.0, 3), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    hintText: 'Search',
                    hintStyle:
                      TextStyle(fontSize: 18.0, color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                        onPressed: _incrementCounter
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200]
                  ),
                  onSubmitted: (input) {},
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: 'Popular ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontFamily: 'Montserrat'
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Events',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          )
                        ]
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: MediaQuery.of(context).size.width*0.65,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (BuildContext context)=>Event1())
                                );
                              },
                              child: Card(
                                color: Color(0xff12563A),
                                // elevation: 6.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side:BorderSide(color: Color(0xff12563A), width: 0.0)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 20.0, right: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'GSSOC',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.width * 0.008,),
                                          Text(
                                            '2020',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400, 
                                              fontSize: 20.0,
                                              color: Colors.white
                                            ),
                                          ),
                                          SizedBox(
                                            height:MediaQuery.of(context).size.width * 0.15,
                                          ),
                                          Text(
                                            'FRI, 13 MAR',
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(
                                            'All Over The World',
                                            style: TextStyle(
                                              fontSize: 11.0,
                                              color: Colors.white
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(bottom:28.0,),
                                            child: Image.asset(
                                              'assets/images/code2.png',
                                              color: Colors.white38,
                                              width: 80.0,
                                              height: 80.0,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            width: MediaQuery.of(context).size.width*0.65,
                            child: Card(
                              color: Color(0xffFE824A),
                              // elevation: 6.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side:BorderSide(color: Color(0xffFE824A), width: 0.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 20.0, right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'GSSOC',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.width * 0.008,),
                                        Text(
                                          '2020',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400, 
                                            fontSize: 20.0,
                                            color: Colors.white
                                          ),
                                        ),
                                        SizedBox(
                                          height:MediaQuery.of(context).size.width * 0.15,
                                        ),
                                        Text(
                                          'FRI, 13 MAR',
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          'All Over The World',
                                          style: TextStyle(
                                            fontSize: 11.0,
                                            color: Colors.white
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(bottom:28.0),
                                          child: Image.asset(
                                            'assets/images/code2.png',
                                            color: Colors.white38,
                                            width: 80.0,
                                            height: 80.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.02,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'Nearby ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontFamily: 'Montserrat'
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Events',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  )
                                )
                              ]
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.013,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.41,
                                child: Card(
                                  elevation: 3.0,
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              '15 MAR',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9.0
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.012,),
                                        Text(
                                          'Coding',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0
                                          ),
                                        ),
                                        Text(
                                          'Competition',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0
                                          ),
                                        ),
                                        Icon(
                                          Icons.code,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.08,
                                        ),
                                        Text(
                                          'by SRMKZILLA',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9.0
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.41,
                                child: Card(
                                  elevation: 3.0,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              '15 MAR',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 9.0
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.012,),
                                        Text(
                                          'WEB DEV',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0
                                          ),
                                        ),
                                        Text(
                                          '101',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0
                                          ),
                                        ),
                                        Icon(
                                          Icons.web_asset,
                                          color: Colors.black,
                                          size: 32,
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height*0.08,
                                        ),
                                        Text(
                                          'by HACKEREARTH',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9.0
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.013,),
                    RaisedButton(
                      onPressed:(){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffFE824A),Color(0xffE16831)]
                          ),
                          borderRadius: BorderRadius.circular(12.0)
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width,minHeight: 35.0),
                          alignment: Alignment.center,
                          child: Text(
                            'REGISTER YOUR EVENT HERE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0
                            ),
                          ),
                        ),
                      ), 
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
  void stressTest() {
    if (_stressTest) {
      return;
    }
    _stressLoops = 0;
    _stressTest = true;
    print("Starting stress test...");
    startListening();
  }

  void changeStatusForStress(String status) {
    if (!_stressTest) {
      return;
    }
    if (speech.isListening) {
      stopListening();
    } else {
      if (_stressLoops >= 100) {
        _stressTest = false;
        print("Stress test complete.");
        return;
      }
      print("Stress loop: $_stressLoops");
      ++_stressLoops;
      startListening();
    }
  }

  void startListening() {
    lastWords = "";
    lastError = "";
    speech.listen(
        onResult: resultListener,
        listenFor: Duration(seconds: 10),
        localeId: _currentLocaleId,
        onSoundLevelChange: soundLevelListener,
        cancelOnError: true,
        partialResults: true);
    setState(() {});
  }

  void stopListening() {
    speech.stop();
    setState(() {
      level = 0.0;
    });
  }

  void cancelListening() {
    speech.cancel();
    setState(() {
      level = 0.0;
    });
  }

  void resultListener(SpeechRecognitionResult result) {
    setState(() {
      lastWords = "${result.recognizedWords}";
      _searchController.text = lastWords;
    });
  }

  void soundLevelListener(double level) {
    setState(() {
      this.level = level;
    });
  }

  void errorListener(SpeechRecognitionError error) {
    setState(() {
      lastError = "${error.errorMsg} - ${error.permanent}";
    });
  }

  void statusListener(String status) {
    changeStatusForStress(status);
    setState(() {
      lastStatus = "$status";
    });
  }

  _switchLang(selectedVal) {
    setState(() {
      _currentLocaleId = selectedVal;
    });
    print(selectedVal);
  }
}