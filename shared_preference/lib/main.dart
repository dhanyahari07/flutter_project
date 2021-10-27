import 'package:flutter/material.dart';
import 'package:shared_preference/HomeScreen.dart';
import 'package:shared_preference/WelcomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:shared_preferences_linux/shared_preferences_linux.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}
 class MainScreen extends StatelessWidget {
   const MainScreen({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         body: Center(
           child: TextButton(
             child: Text('Proceed'),
             onPressed: () async {
                bool visitedFlag=await getVisitingFlag();

                if(visitedFlag==true)
                  {
                    //user is not visiting for the first time
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                else{
                  //first time user
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                      setvisitingFlag();
                }
             },
           ),
         ),
       )     ;
   }
 }
 setvisitingFlag() async{
   SharedPreferences preferences= await SharedPreferences.getInstance();
   preferences.setBool("alreadyvisited", true);
 }

 getVisitingFlag() async
 {
   SharedPreferences preferences= await SharedPreferences.getInstance();
   bool alreadyVisited=preferences.getBool("alreadyvisited") ;
   return alreadyVisited;


 }
 