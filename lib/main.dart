import 'package:facebook/pages/Theme.dart';
import 'package:facebook/pages/forlist.dart';
import 'package:flutter/material.dart';
import 'pages/MyHomePage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(),
       theme:ThemeData(
         primaryColor: Colors.black,
         accentColor: Colors.grey
       ),

      routes:{
        MyHomePage.id:(context) =>MyHomePage(),

        },
      debugShowCheckedModeBanner: false,
    );
  }
}

