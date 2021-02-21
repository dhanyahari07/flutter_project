import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "log list",
    home: Scaffold(
      appBar: AppBar(title: Text("long list"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("Fab clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add one more item",
      ),
    ),
  ));
}
void showSnackBar(BuildContext context,String item){
  var snackBar=SnackBar(content: Text("you just tapped $item"),
  action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint("performing dummy UNDO operation");
      },
  ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
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
        showSnackBar(context,listItems[index]);
      },
    );
  }

  );
  return listView;
}