import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: RoundIconButton(icon: FontAwesomeIcons.plus,),
        )

      ),

    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  const RoundIconButton({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      //disabledElevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56
      ),
      onPressed: (){

      },
      child: Icon(icon),
    );
  }
}

