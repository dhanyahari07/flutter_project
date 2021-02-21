import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'List Widget',
    home: Scaffold(
      appBar: AppBar(
        title: Text('basic text view'),
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView(){
  var listView =ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautifu view'),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint('landscape tapped'); //separate for each item
        },

      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text('Winows'),


      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('phone'),


      ),
      Text('Yet another element'),
      Container(
        color: Colors.red,height: 50.0,
      )
    ],
  );
  return listView;
}