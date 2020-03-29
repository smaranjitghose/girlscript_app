import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

void main() => runApp(EventRegisteration());

class EventRegisteration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('Event Registration',
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
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
                      width: 100.0,
                      child: Column(
                        children: <Widget>[
                          FlatButton(
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text('SUBMIT',
                                style: TextStyle(
                                    fontSize: 15.0, fontWeight: FontWeight.w800)),
                            onPressed: () {},
                            color: Colors.orange,
                          ),
                        ],
                      )),
                ],
              )),
        ));
  }
}
