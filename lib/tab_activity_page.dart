import 'package:flutter/material.dart';

class TabActivityPage extends StatefulWidget {
  @override
  _TabActivityPageState createState() => _TabActivityPageState();
}

class _TabActivityPageState extends State<TabActivityPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(
          "活动",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
