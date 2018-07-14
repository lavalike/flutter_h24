import 'package:flutter/material.dart';

class TabFindPage extends StatefulWidget {
  @override
  _TabFindPageState createState() => _TabFindPageState();
}

class _TabFindPageState extends State<TabFindPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(
          "发现",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
