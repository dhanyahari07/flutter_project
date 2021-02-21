import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("All Type of Underline Text in Flutter"),
            ),
            body: Center(child: Column(
                children: <Widget>[

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Sample Underline Text',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 25
                        ),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text.rich(
                        TextSpan(
                          text: 'A Part Of Text ',
                          style: TextStyle(fontSize: 25),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Underline',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Wavy Underline Text',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.wavy,
                            fontSize: 25
                        ),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Double Underline Text',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double,
                            fontSize: 25
                        ),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Dashed Underline Text',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                            fontSize: 25
                        ),
                      )),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Dotted Underline Text',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dotted,
                            fontSize: 25
                        ),
                      )),

                ]
            )
            )
        ));
  }
}