import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "log list",
    home: Scaffold(
      appBar: AppBar(title: Text("long list"),),
      body: getListView(),
    ),
  ));
}

List<String> getListELements(){
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView(){
  var listItems=getListELements();
  var listView = ListView.builder(itemBuilder: (context,index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: (){
        debugPrint('${listItems[index]} was tapped');
      },
    );
  }

  );
  return listView;
}