import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String valueChoices;
  List ListItem=[
    'Item1','Item2','Item3','Item4'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drop down'),
        ),
        body: Center(
          child: DropdownButton(
            hint: Text('select an item'),
            dropdownColor: Colors.lime,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            isExpanded: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
            ),
            value: valueChoices ,
            onChanged: (newvalue){
              setState(() {
                valueChoices=newvalue;
              });
            },
            items: ListItem.map((valueItem){
              return DropdownMenuItem(
                value: valueItem,
                  child: Text(valueItem),);
            }).toList(),

          ),
        ),
      ),
    );
  }
}
