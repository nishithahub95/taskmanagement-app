import 'package:chatapp/about.dart';
import 'package:flutter/material.dart';
import 'feedPage.dart';


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: feedPage(),
    );
  }
}
