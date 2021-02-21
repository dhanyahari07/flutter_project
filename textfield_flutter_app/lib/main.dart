import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Center(
          child: Container(
            width: 300.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password here',

              ),
              keyboardType: TextInputType.number,
              autocorrect: true,
              autofocus: true,
              //obscureText: true,
            ),
          ),
        ),
      ),
    );
  }
}
