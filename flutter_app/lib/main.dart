import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Home()
  ));
}
class  Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        centerTitle: true,
        backgroundColor: Colors.red[600],

      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/nature.jpeg'),

          //NetworkImage('https://images.unsplash.com/photo-1611812647505-41ce303d4898?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
        ),


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click '),
        backgroundColor: Colors.red[600],
      ),
    )

    ;
  }
}



