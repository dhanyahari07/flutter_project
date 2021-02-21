import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Radio Button Example"),
            backgroundColor: Colors.pink[300],
          ),
          body: SafeArea(
              child : Center(

                child:Radiobutton(),

              )
          )
      ),

    );
  }
}

class Radiobutton extends StatefulWidget {
  @override
  _RadiobuttonState createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio='Dhanya';
  }
  setSelectedRadio(String val){
    setState(() {
      selectedRadio=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Dhanya'),
          leading: Radio(
            value: 'Dhanya',
            groupValue: selectedRadio,
            activeColor: Colors.lime,
            onChanged: (val){
              print('Radio $val');
              setSelectedRadio(val);
            },
          ),
        ),
        ListTile(
          title: const Text('Harish'),
          leading: Radio(
            value: 'Harish',
            groupValue: selectedRadio,
            activeColor: Colors.pink[300],
            onChanged: (val) {
              setSelectedRadio(val);
            },

          ),
        ),
        Container(
          child: Text(
            'The selected value is $selectedRadio'
          ),
        )
      ],
    );
  }
}


