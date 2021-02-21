import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Container(
          width: double.infinity,
          height: 150.0,
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue[800],width:2),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(color: Colors.grey[300],offset: new Offset(4.0, 4.0),),
            ],
          ),
          child: Text('Container widget decoration box', style: TextStyle(fontSize: 30,color: Colors.amber)),

        ),
      ),

    );
  }
}



