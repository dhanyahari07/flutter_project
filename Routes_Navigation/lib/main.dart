import 'package:flutter/material.dart';
import 'package:routes_navigation/screen0.dart';
import 'package:routes_navigation/screen1.dart';
import 'package:routes_navigation/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>Screen0(),
        '/first': (context) =>Screen1(),
        '/second': (context) =>Screen2()
      },

    );
  }
}
