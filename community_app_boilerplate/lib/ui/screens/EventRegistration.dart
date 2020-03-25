import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

void main() => runApp(EventRegisteration());

class EventRegisteration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar:AppBar(
      centerTitle: true,
      title: Text(
        "GIRLSCRIPT CHENNAI",
        style: TextStyle(
          fontFamily: "Poppins",
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffff4000),Color(0xffffcc66),]
          )
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/icons/transparent_logo.png',
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20.0,
            child: Image.asset('assets/icons/user_placeholder.png')
          ),
        )
      ],
    ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              RichText(
                text: TextSpan(
                  text: "EVENT REGISTRATION",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0
                  ),
                  // children: <TextSpan>[
                  //   TextSpan(
                  //     text: "US",
                  //     style: TextStyle(
                  //       color: Colors.amber[800]
                  //     )
                  //   )
                  // ]
                )
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                TextField(
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    labelText: 'Email Id',
                    //  helperText: 'Sell Quantity',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    labelText: 'Contact Number',
                    //  helperText: 'Rate(Per Kg)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                DateTimeField(
                  decoration: InputDecoration(
                      hintText: 'DD/MM/YYYY',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.orange,
                          color: Colors.orange,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600)),
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100));
                  },
                  format: null,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    labelText: 'Which event are you interested in ?',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    height: 50.0,
                    width: 110.0,
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('SUBMIT',
                                style: TextStyle(
                                    fontSize: 18.0, fontWeight: FontWeight.w800)),
                          ),
                          onPressed: () {},
                          color: Colors.orange,
                        ),
                      ],
                    )),
              ],
            )));
  }
}
