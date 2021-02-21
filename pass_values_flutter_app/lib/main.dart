import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Send Values To Next Screen')
            ),
            body: Center(
                child: HomeScreen()
            )
        )
    );
  } }

class HomeScreen extends StatefulWidget {

  HomeScreenState createState() => HomeScreenState();

}

class HomeScreenState extends State<HomeScreen>{

  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  final studentClass = TextEditingController();

  getItemAndNavigate(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(
                nameHolder : name.text,
                classHolder : studentClass.text,
                numberHolder : phoneNumber.text
            ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[

              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: name,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Enter Name Here'),
                  )
              ),

              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: studentClass,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Enter Class Here'),
                  )
              ),

              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: phoneNumber,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Enter Phone Number Here'),
                  )
              ),

              RaisedButton(
                onPressed:()=> getItemAndNavigate(context),
                color: Color(0xffFF1744),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Send All Entered Items To Next Screen'),
              ),

            ],
          ),
        ));
  }
}

class SecondScreen extends StatelessWidget {

  final  nameHolder ;
  final  classHolder ;
  final  numberHolder ;



  SecondScreen({
    Key key, @required this.nameHolder,
    this.classHolder,
    this.numberHolder}) : super(key: key);

  goBack(BuildContext context){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Activity Screen"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child:
              Text('Student Name = ' + nameHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,)),

              Center(child:
              Text('Student Class = ' + classHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,)),

              Center(child:
              Text('Student Phone Number = ' + numberHolder,
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,)),

              RaisedButton(
                onPressed: ()=> goBack(context),
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Text('Go Back To Previous Screen'),
              )])
    );
  }
}