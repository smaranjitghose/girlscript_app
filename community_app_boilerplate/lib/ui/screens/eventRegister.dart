import 'package:flutter/material.dart';

class EventRegister extends StatefulWidget {
  @override
  _EventRegisterState createState() => _EventRegisterState();
}

class _EventRegisterState extends State<EventRegister> {

  String _eventName,_date,_organisation,_eventPrice,description;

  final inputTextDecoration = InputDecoration(
    labelStyle: TextStyle(
      fontSize: 18,
      color: Colors.grey[500],
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE46D39)),
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 10)
  );

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'BACK',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_left,
            size: 40.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: height*0.01),
              Text(
                'Register For An Event',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                ),
              ),
              SizedBox(height: height*0.04),
              Container(
                width: width*0.2,
                height: height*0.1,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      color: Colors.grey
                    )
                  ]
                ),
                child: Icon(
                  Icons.file_upload,
                  size: 45,
                ),
              ),
              SizedBox(height: height*0.02),
              Text(
                'Upload your poster',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w100
                ),
              ),
              SizedBox(height: height*0.02),
              TextFormField(
                cursorColor: Color(0xffE46D39),
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    _eventName = val;
                  });
                },
                validator: (value) => value.isEmpty ? '*Required' : null,
                decoration: inputTextDecoration.copyWith(
                  labelText: "Name of Event",
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black87, 
                    size: 30
                  )
                ),
              ),
              TextFormField(
                cursorColor: Color(0xffE46D39),
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    _eventName = val;
                  });
                },
                validator: (value) => value.isEmpty ? '*Required' : null,
                decoration: inputTextDecoration.copyWith(
                  labelText: "Date",
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.black87, 
                    size: 30
                  )
                ),
              ),
              TextFormField(
                cursorColor: Color(0xffE46D39),
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    _eventName = val;
                  });
                },
                validator: (value) => value.isEmpty ? '*Required' : null,
                decoration: inputTextDecoration.copyWith(
                  labelText: "Organisation",
                  icon: Icon(
                    Icons.people_outline,
                    color: Colors.black87, 
                    size: 30
                  )
                ),
              ),
              TextFormField(
                cursorColor: Color(0xffE46D39),
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    _eventName = val;
                  });
                },
                validator: (value) => value.isEmpty ? '*Required' : null,
                decoration: inputTextDecoration.copyWith(
                  labelText: "Price of Event",
                  icon: Icon(
                    Icons.attach_money,
                    color: Colors.black87, 
                    size: 30
                  )
                ),
              ),
              TextFormField(
                cursorColor: Color(0xffE46D39),
                maxLines: 5,
                keyboardType: TextInputType.text,
                onChanged: (val) {
                  setState(() {
                    _eventName = val;
                  });
                },
                validator: (value) => value.isEmpty ? '*Required' : null,
                decoration: inputTextDecoration.copyWith(
                  labelText: "Description",
                  icon: Icon(
                    Icons.description,
                    color: Colors.black87, 
                    size: 30
                  )
                ),
              ),
              SizedBox(height: height*0.05),
              Container(
                height: height*0.07,
                child: RaisedButton(
                  onPressed:(){
                    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>EventRegister()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xffFE824A),Color(0xffE16831)]
                      ),
                      borderRadius: BorderRadius.circular(2.0)
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width,minHeight: 35.0),
                      alignment: Alignment.center,
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0
                        ),
                      ),
                    ),
                  ), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}