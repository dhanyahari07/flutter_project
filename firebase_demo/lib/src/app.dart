import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => EntryProvider(),
      child: MaterialApp(
          home: HomeScreen(),
          theme: ThemeData(
            accentColor: Colors.pinkAccent,
            primaryColor: Colors.black,
            textTheme: GoogleFonts.patrickHandScTextTheme(),
          )),
    );
  }
}
