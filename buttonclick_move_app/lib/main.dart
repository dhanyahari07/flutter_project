import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "navigate to another activity",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Navigate to second Screen'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            gotoSecondActivity(context);
          },
        ),
      ),
    );
  }
}

gotoSecondActivity(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SecondScreen()));
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Activity Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            goBacktoPreviousScreen(context);
          },
          color: Colors.lightBlue,
          textColor: Colors.white,
          child: Text('Go Back To Previous Screen'),
        ),
      ),
    );
  }
}

goBacktoPreviousScreen(BuildContext context) {
  Navigator.pop(context);
}
