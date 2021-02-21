import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Example of Clickable Text in Flutter"),
          ),
          body: SafeArea(
              child: Center(
            child: ClickWidget(),
          ))),
    );
  }
}

class ClickWidget extends StatefulWidget {
  @override
  _ClickWidgetState createState() => _ClickWidgetState();
}

class _ClickWidgetState extends State<ClickWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: "To Learn More About Flutter ",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          TextSpan(
              text: "Click Here ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = () {
                  launch('https://flutter-examples.com');
                }),
        ]),
      ),
    );
  }
}
