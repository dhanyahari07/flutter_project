import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final textFieldValueHolder=TextEditingController();
  String result='';
  getInputData(){
    setState(() {
      result=textFieldValueHolder.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  controller: textFieldValueHolder,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Enter some text here'
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10.0,
              ),
              RaisedButton(onPressed: getInputData,
              color: Colors.teal,
              textColor: Colors.white,
              child: Text('click to get data'),),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text("The enetered text is =$result",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
