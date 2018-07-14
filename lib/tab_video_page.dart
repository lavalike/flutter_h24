import 'package:flutter/material.dart';

class TabVideoPage extends StatefulWidget {
  @override
  _TabVideoPageState createState() => _TabVideoPageState();
}

class _TabVideoPageState extends State<TabVideoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(
          "视频",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
