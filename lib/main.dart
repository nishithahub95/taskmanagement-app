import 'package:flutter/material.dart';
import 'homePage.dart';


void main(){
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter chat app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: homePage(),
    );
  }
}
